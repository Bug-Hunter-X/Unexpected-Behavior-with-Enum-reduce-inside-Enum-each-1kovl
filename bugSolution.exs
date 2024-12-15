```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Use Enum.reduce directly
sum = Enum.reduce(list, 0, fn x, acc ->
  if x == 3 do
    IO.puts("Found 3!")
  end
  x + acc
end)
IO.puts("Sum: #{sum}")

# Solution 2: Use Enum.map for transformations and then reduce
mapped_list = Enum.map(list, fn x ->
  if x == 3 do
    IO.puts("Found 3!")
  end
  x
end)
sum2 = Enum.sum(mapped_list)
IO.puts("Sum 2: #{sum2}")
```