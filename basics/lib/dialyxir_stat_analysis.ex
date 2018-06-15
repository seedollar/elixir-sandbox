defmodule StaticAnalysisExample do
  def wrongness() do
    total_distance = fall_velocity(:earth, 20) + 
      fall_velocity(:moon, 20) + 
      fall_velocity(:mars, 20) + 
      fall_velocity(:earth, 20) 
    total_distance
  end

  def fall_velocity(:earth, distance) when distance >= 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
    :math.sqrt(2 * 3.71 * distance)
  end

end
