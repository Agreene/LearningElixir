defmodule Euler1 do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
"""

  @doc """
  naive solution
  For each number from 1 to n, choose only the ones divisible by 3 or 5, then sum them
  """
  def slow_solution(n) do
    Enum.filter(1..n, &Euler1.should_sum?/1 ) |> Enum.sum
  end

  def should_sum?(i) do
    rem(i, 3) === 0 or rem(i, 5) === 0
  end



  @doc """
  fast solution
  Take the sum of all multiples of 3, plus the sum of all multiples of 5, minus the sum of all multiples of 15
  """
  def fast_solution(n) do
    sum_multiples(3, n) + sum_multiples(5, n) - sum_multiples(15, n)
  end


  # sum of [5, 10, 15 ...100] is equal to 5 * sum of [1, 2, 3 .. 20]
  def sum_multiples(k, n) do
    m = div(n, k)
    k * summation(m)
  end

  #formula for sum of positive integers from 1..n
  def summation(n) do
    div(n * (n+1), 2)
  end

end