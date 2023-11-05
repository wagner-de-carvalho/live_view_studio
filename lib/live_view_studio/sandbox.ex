defmodule LiveViewStudio.Sandbox do
  def calculate_weight(length, width, depth) do
    (to_float(length) * to_float(width) * to_float(depth) * 7.3) |> Float.round(1)
  end

  def calculate_price(weight) do
    weight * 0.15
  end

  def to_float(value) when is_binary(value) do
    value
    |> Float.parse()
    |> then(fn
      {float, _} ->
        float

      :error ->
        0.0
    end)
  end

  def to_float(value), do: value
end
