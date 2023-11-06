defmodule LiveViewStudioWeb.DonationsLive do
  use LiveViewStudioWeb, :live_view

  alias LiveViewStudio.Donations

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(params, _, socket) do
    sort_by = (params["sort_by"] || "id") |> String.to_atom()
    sort_order = (params["sort_order"] || "asc") |> String.to_atom()
    page = (params["page"] || "1") |> String.to_integer()
    per_page = (params["per_page"] || "5") |> String.to_integer()
    options = %{sort_by: sort_by, sort_order: sort_order, page: page, per_page: per_page}
    donations = Donations.list_donations(options)

    socket = assign(socket, donations: donations, options: options)

    {:noreply, socket}
  end

  def sort_link(assigns) do
    params = %{
      assigns.options
      | sort_by: assigns.sort_by,
        sort_order: next_sort_order(assigns.options.sort_order)
    }

    assigns = assign(assigns, params: params)

    ~H"""
    <.link patch={~p"/donations?#{@params}"}>
      <%= render_slot(@inner_block) %>
    </.link>
    """
  end

  defp next_sort_order(sort_order) do
    sort_order
    |> then(fn
      :asc -> :desc
      :desc -> :asc
    end)
  end
end
