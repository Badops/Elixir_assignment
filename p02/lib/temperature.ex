defmodule Temperature do

  @doc """
  rand_temp() returns a random integer from -20 to 50.
  It could use the :rand.uniform(n) function where n is an integer.
  This function generates an integer from 1 to n.
  """
  def rand_temp() do
    Enum.random([-20..50])
  end

  def comfortable?(t) do
    cond do
      t in -20..0 -> :cold
      t in 0..10 -> :chill
      t in 10..20 -> :comfortable
      t in 20..30 -> :warm
      t in 30..51 -> :hot
      true -> :out_of_range
    end
  end

end
