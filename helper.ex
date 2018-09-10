defmodule Helper do
  @moduledoc false

  # time taken to run function f with parameter x
  # returns tuple of {answer, time}
  def time(f, x) do
    start_time = :os.system_time(:millisecond)
    answer = f.(x)
    stop_time = :os.system_time(:millisecond)
    {answer, stop_time - start_time}
  end
end
