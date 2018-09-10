defmodule Euler34 do
  @moduledoc """
  145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

  Find the sum of all numbers which are equal to the sum of the factorial of their digits.

  Note: as 1! = 1 and 2! = 2 are not sums they are not included.
"""


  @doc """
  Fairly straightforward. For each number up to n, check if it is equal to the sum of its digit factorials
  Excluding 1 and 2 because the instructions specifically told us to
  """
  def solution(n) do
    Enum.filter(3..n, fn x -> digit_factorial_sum(x) == x end) |> Enum.sum
  end


  # Split the number into it's digits, take the factorial of each and sum
  def digit_factorial_sum(n) do
    Integer.digits(n) |> Enum.map(&factorial/1) |> Enum.sum
  end

  def factorial(0) do
    1
  end
  def factorial(n) when n > 0 do
    n * factorial(n-1)
  end

end
