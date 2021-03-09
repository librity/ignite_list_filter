defmodule ListFilter do
  def call(list) do
    list
    |> Stream.map(&parse_or_zero/1)
    |> Stream.filter(fn number -> rem(number, 2) == 1 end)
    |> Enum.count()
  end

  defp parse_or_zero(string) do
    Integer.parse(string)
    |> handle_parse()
  end

  defp handle_parse({number, _leftover}), do: number
  defp handle_parse(:error), do: 0
end
