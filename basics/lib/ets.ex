defmodule ETSExample do

  require WeightConversion

  def setup do
    weight_conversion_table = :ets.new(:weightConversions, [:named_table, {:keypos, WeightConversion.weightConversionFactor(:id) + 1}])
    :ets.insert :weightConversions, WeightConversion.weightConversionFactor(id: 1, source: "KG", target: "LB", factor: 0.453592, active: true)
    :ets.insert :weightConversions, WeightConversion.weightConversionFactor(id: 2, source: "LB", target: "KG", factor: 2.20462, active: true)
    :ets.insert :weightConversions, WeightConversion.weightConversionFactor(id: 3, source: "G", target: "KG", factor: 1000, active: true)
    :ets.insert :weightConversions, WeightConversion.weightConversionFactor(id: 4, source: "KG", target: "G", factor: 0.001, active: true)
    :ets.insert :weightConversions, WeightConversion.weightConversionFactor(id: 5, source: "L", target: "ML", factor: 0.001, active: true)
    :ets.insert :weightConversions, WeightConversion.weightConversionFactor(id: 6, source: "ML", target: "L", factor: 1000, active: true)
 
    :ets.info weight_conversion_table
  end

end
