defmodule Euler21 do
  @moduledoc """
  Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
  If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

  For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

  Evaluate the sum of all the amicable numbers under 10000.
"""


  @doc """
  Check every number up to n, keep only the ones that are amicable -- then sum them up

  Solution is O(n),  sum_divisors is called ~2N times
  """
  def solution(n) do
    Enum.filter(1..n, &amicable?/1) |> Enum.sum
  end


  #
  def amicable?(a) do
    b = sum_divisors(a)
    if a != b and sum_divisors(b) == a do
      true
    else
      false
    end
  end



  def sum_divisors(n) do
    #only need to go up to the square root before we start getting duplicate pairs
    n_sqrt = :math.sqrt(n) |> :math.floor |> round

    #start with 2, we'll handle 1 as a special case at the end
    lower_divisors = Enum.filter(2..n_sqrt, fn x -> rem(n, x) == 0 end)

    higher_divisors = Enum.map(lower_divisors, fn x -> div(n, x) end)

    Enum.sum(lower_divisors) + Enum.sum(higher_divisors) + 1
  end

end
