defmodule LiveViewStudioWeb.VolunteersLive do
  use LiveViewStudioWeb, :live_view

  alias LiveViewStudio.Volunteers
  alias LiveViewStudio.Volunteers.Volunteer

  def mount(_params, _session, socket) do
    volunteers = Volunteers.list_volunteers()
    changeset = Volunteers.change_volunteer(%Volunteer{})

    socket =
      assign(socket,
        volunteers: volunteers,
        form: to_form(changeset)
      )

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Volunteer Check-In</h1>
    <div id="volunteer-checkin">
      <.form for={@form} phx-submit="save">
        <.input field={@form[:name]} placeholder="Name" autocomplete="off" />
        <.input field={@form[:phone]} type="tel" placeholder="Phone" />
        <.button phx-disable-with="Saving...">
          Check In
        </.button>
      </.form>

      <div :for={volunteer <- @volunteers} class={"volunteer #{if volunteer.checked_out, do: "out"}"}>
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
        |> update(:volunteers, fn volunteers -> [volunteer | volunteers] end)
        |> then(fn socket -> {socket, Volunteers.change_volunteer(%Volunteer{})} end)
        |> then(fn {socket, changeset} ->
          {:noreply, assign(socket, :form, to_form(changeset))}
        end)
    end)
  end
end
