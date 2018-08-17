defmodule Guards do

  @doc """
  switch_case(list) maps the switch_case_aux function over the whole list of
  character list.
  Look up Enum.map do help with this. You should not have to worry about
  recursion.
  """
  def switch_case(list) do
    Enum.map(list, fn(n) -> 
      value = switch_case_aux(n)
      if is_integer(value) do
	      value
      else
        <<aacute::utf8>> = value
        aacute
      end
    end)
  end

  @doc """
  switch_case_aux(letter) switches the case of letter.
  This works on three different cases:
  - switch_case_aux(?a) returns ?A
  - switch_case_aux(?T) returns ?t
  - switch_case_aux(?@) returns ?@
  """
  defp switch_case_aux(letter) when letter in ?a..?z do
    str = <<letter::utf8>>
    String.upcase(str)
  end
  defp switch_case_aux(letter) when letter in ?A..?Z do
    str = <<letter::utf8>>
    String.downcase(str)
  end
  defp switch_case_aux(letter) do
    letter
  end

end

