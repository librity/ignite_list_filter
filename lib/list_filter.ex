defmodule ListFilter do
  def call(list) do
    list
    |> stream_parse_or_zero()
    |> Stream.filter(fn number -> rem(number, 2) == 1 end)
    |> Enum.count()
  end

  defp stream_parse_or_zero(list) do
    Stream.map(list, fn string ->
      case Integer.parse(string) do
        {number, _leftover} -> number
        :error -> 0
      end
    end)
  end
end
