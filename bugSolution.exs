```elixir
list = [1, 2, 3, 4, 5]

# Solution using Enum.reduce
Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    IO.puts("Encountered 3, continuing...")
    acc
  else
    IO.puts(x)
    [x | acc]
  end
end)

# Alternative solution using try-catch within Enum.each (less preferable)
# Enum.each(list, fn x ->
#   try do
#     if x == 3 do
#       IO.puts("Encountered 3, continuing...")
#     else
#       IO.puts(x)
#     end
#   catch
#     :exit, reason -> IO.puts("Unexpected exit: #{inspect reason}")
#   end
end)
```