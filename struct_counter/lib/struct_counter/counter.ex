defmodule StructCounter.Counter do
  defstruct [:count]

  @moduledoc """
  A counter module that provides basic arithmetic operations and formatting.
  """

  @doc """
  Creates a new counter from a string input.

  Parses a string representation of a number and returns an integer.

  ## Examples

      iex> Summer.Counter.new("5")
      5

      iex> Summer.Counter.new("0")
      0

      iex> Summer.Counter.new("-3")
      -3
  """
  def new(string_input) when is_binary(string_input) do
    count = String.to_integer(string_input)
    %__MODULE__{count: count}
  end

  def new(_other) do
    raise ArgumentError, "Expected a string input"
  end

  @doc """
  Increments an integer by 1.

  ## Examples

      iex> Summer.Counter.inc(5)
      6

      iex> Summer.Counter.inc(0)
      1

      iex> Summer.Counter.inc(-1)
      0
  """
  def inc(%{count: c} = counter) when is_integer(c) do
    %{counter | count: c + 1}
  end

  @doc """
  Decrements an integer by 1.

  ## Examples

      iex> Summer.Counter.dec(5)
      4

      iex> Summer.Counter.dec(1)
      0

      iex> Summer.Counter.dec(0)
      -1
  """
  def dec(%{count: c} = counter) when is_integer(c) do
    %{counter | count: c - 1}
  end

  @doc """
  Shows the counter value wrapped in HTML paragraph tags.

  ## Examples

      iex> Summer.Counter.show(5)
      "<p>5</p>"

      iex> Summer.Counter.show(0)
      "<p>0</p>"

      iex> Summer.Counter.show(-3)
      "<p>-3</p>"
  """
  def show(%{count: c}) when is_integer(c) do
    "<p>#{c}</p>"
  end
end

# prompt
#
# This is a course for an Elixir class. Build a module called Summer.Counter.
# It should have three functions. new/1 should accept input of type string, and return an integer of type string.

# inc/1 should accept an integer, and return an incremented integer. Similarly, implement dec/1.

# show/1 should accept an acc (an integer) and return a string that's the acc wrapped by paragraph tags.

# ---

# now write tests
