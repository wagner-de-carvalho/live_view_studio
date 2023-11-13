defmodule LiveViewStudioWeb.DesksLive do
  use LiveViewStudioWeb, :live_view

  alias LiveViewStudio.Desks
  alias LiveViewStudio.Desks.Desk

  def mount(_params, _session, socket) do
    if connected?(socket), do: Desks.subscribe()

    socket =
      assign(socket,
        form: to_form(Desks.change_desk(%Desk{}))
      )

    socket =
      allow_upload(socket, :photos,
        accept: ~w(.png .jpeg .jpg),
        max_entries: 3,
        max_file_size: 10_000_000
      )

    {:ok, stream(socket, :desks, Desks.list_desks())}
  end

  def handle_event("validate", %{"desk" => params}, socket) do
    changeset =
      %Desk{}
      |> Desks.change_desk(params)
      |> Map.put(:action, :validate)

    {:noreply, assign_form(socket, changeset)}
  end

  def handle_event("save", %{"desk" => params}, socket) do
    params
    |> Desks.create_desk()
    |> then(fn
      {:ok, _desk} ->
        changeset = Desks.change_desk(%Desk{})
        {:noreply, assign_form(socket, changeset)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end)
  end

  def handle_event("cancel", %{"ref" => ref}, socket) do
    {:noreply, cancel_upload(socket, :photos, ref)}
  end

  def handle_info({:desk_created, desk}, socket) do
    {:noreply, stream_insert(socket, :desks, desk, at: 0)}
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    assign(socket, :form, to_form(changeset))
  end
end
