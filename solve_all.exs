IO.puts "Problem 1 - slow"
IO.inspect Helper.time(&Euler1.slow_solution/1, 999)

IO.puts "Problem 1 - fast"
IO.inspect Helper.time(&Euler1.fast_solution/1, 999)

IO.puts "Problem 21:"
IO.inspect Helper.time(&Euler21.solution/1, 9999)


#   Max value for a single digit is 9! = 362880 . That means the max digit factorial value for any number is the number
#   of digits times 362880.
#   A 7 digit number (9,999,999) has max value 2540160
IO.puts "Problem 34:"
IO.inspect Helper.time(&Euler34.solution/1, 2_540_160)


IO.puts "Problem 44:"
IO.inspect Helper.time(&Euler44.solution/1, 10000)