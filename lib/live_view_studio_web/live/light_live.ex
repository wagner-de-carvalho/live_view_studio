defmodule LiveViewStudioWeb.LightLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket
    |> assign(brightness: 10)
    |> then(&{:ok, &1})
  end

  def render(assigns) do
    ~H"""
    <h1 class="font-bold text-center text-4xl mb-10">Front Porch Light</h1>
    <div id="light">
      <div class="meter">
        <span style={"width: #{@brightness}%"}>
          <%= @brightness %>%
        </span>
      </div>
      <button>
        <img src="/images/light-off.svg" alt="Light off" />
      </button>
      <button>
        <img src="/images/light-on.svg" alt="Light on" />
      </button>
    </div>
    """
  end
end
