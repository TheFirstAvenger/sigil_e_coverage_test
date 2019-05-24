# SigilETest

This is a minimal reproduction of an issue whereby code coverage counts `~E` lines as not covered when they contain a function in them.

By running `mix coveralls.detail --filter page_view.ex` you see that line 9 of `page_view.ex` is listed as not covered even though the `IO.puts` in the same function is listed as covered.

```elixir
defmodule SigilETestWeb.PageView do
  use SigilETestWeb, :view

  def foo do
    IO.puts("this is covered")

    ~E"""
    call to bar is not
    <%= bar() %>
    """
  end

  def bar(), do: ""
end
```