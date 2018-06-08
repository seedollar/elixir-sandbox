defprotocol Legal do
  @doc "Returns true of the input provided is legal."
  def legal?(data)
end
