defmodule StructExamples do
  require Logger
  alias Struct.Person

  def createPerson() do
    jimmy = %Person{id: 10, firstName: "Jimmy", lastName: "Fallon", age: 53, username: "jfallon"}
    Logger.info("Person: #{jimmy.firstName} #{jimmy.lastName} - Age: #{jimmy.age}") 
    jimmy
  end

  def patternMatchingStruct() do
    jimmy = createPerson()
    %{firstName: name, age: old} = jimmy
    Logger.info("name: #{name}, ages: #{old}") 
  end

  def matchPersonFunction(p = %Person{}) do
    printFullName(p.firstName, p.lastName)
  end

  def matchPersonFunction2(%Person{firstName: fname, lastName: lname}) do
    printFullName(fname, lname)
  end

  defp printFullName(firstName, lastName) do
    Logger.info("Full Name: #{firstName} #{lastName}")
  end

  def testLegalProtocol do
    micky = %Person{age: 5}
    Legal.legal?(micky)
  end
end
