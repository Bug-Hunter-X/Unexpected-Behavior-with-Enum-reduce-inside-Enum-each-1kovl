```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # This will throw an error because Enum.each does not return a value
    IO.puts("Found 3!")
    Enum.reduce(list, 0, &+/2)
  end
end)
```