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
