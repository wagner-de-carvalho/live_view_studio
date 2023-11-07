defmodule LiveViewStudioWeb.VolunteersLive do
  use LiveViewStudioWeb, :live_view

  alias LiveViewStudio.Volunteers
  alias LiveViewStudio.Volunteers.Volunteer

  def mount(_params, _session, socket) do
    volunteers = Volunteers.list_volunteers()
    changeset = Volunteers.change_volunteer(%Volunteer{})

    socket =
      socket
      |> stream(:volunteers, volunteers)
      |> assign(:form, to_form(changeset))

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Volunteer Check-In</h1>
    <div id="volunteer-checkin">
      <.form for={@form} phx-submit="save" phx-change="validate">
        <.input field={@form[:name]} placeholder="Name" autocomplete="off" phx-debounce="2000" />
        <.input field={@form[:phone]} type="tel" placeholder="Phone" phx-debounce="blur" />
        <.button phx-disable-with="Saving...">
          Check In
        </.button>
      </.form>

      <div id="volunteers" phx-update="stream">
        <div
          :for={{volunteer_id, volunteer} <- @streams.volunteers}
          class={"volunteer #{if volunteer.checked_out, do: "out"}"}
          id={volunteer_id}
        >
          <div class="name">
            <%= volunteer.name %>
          </div>
          <div class="phone">
            <%= volunteer.phone %>
          </div>
          <div class="status">
            <button>
              <%= if volunteer.checked_out, do: "Check In", else: "Check Out" %>
            </button>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def handle_event("save", %{"volunteer" => volunteer}, socket) do
    volunteer
    |> Volunteers.create_volunteer()
    |> then(fn
      {:error, changeset} ->
        {:noreply, assign(socket, :form, to_form(changeset))}

      {:ok, volunteer} ->
        socket
        |> stream_insert(:volunteers, volunteer, at: 0)
        |> then(fn socket -> {socket, Volunteers.change_volunteer(%Volunteer{})} end)
        |> then(fn {socket, changeset} ->
          {:noreply, assign(socket, :form, to_form(changeset))}
        end)
    end)
  end

  def handle_event("validate", %{"volunteer" => volunteer_params}, socket) do
    changeset =
      %Volunteer{}
      |> Volunteers.change_volunteer(volunteer_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, :form, to_form(changeset))}
  end
end
