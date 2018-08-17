defmodule Player do

  @spec evens(list(integer)) :: list(integer)
  def evens(l) do
    Enum.filter(l, &(rem(&1,2)==0))
  end

  # p1 = [name: "Akbar", x: 200, y: 120, race: :mon_calamari]
  # p2 = [name: "Chewie", x: 40, y: 0, race: :wookie]
  # p3 = [name: "Han", x: 20, y: 20, race: :human]
  # Define a list l:
  # l = [p1,p2,p3]

  @spec match(String.t) :: function
  def match(id) do
    player_list = fn (list) -> 
      if list[:name] == id do
        list
      end
    end
    
    player_list
  end


  @spec get_player(list(list(tuple)), String.t) :: list(tuple)
  def get_player(l,id) do
    i = match(id)
    filtered_list = l 
    |> Enum.filter(fn (x) ->
        i.(x)
    end)

    [p] = filtered_list
    p
  end

end
