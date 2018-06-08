defmodule Struct.Person do
  defstruct [
    :id,
    :firstName,
    :lastName,
    :username,
    :password,
    :age
  ]

  defimpl Legal, for: Struct.Person do
    def legal?(p) do
      p.age > 21 and p.username != nil
    end
  end

  defimpl Inspect, for: Struct.Person do
    def inspect(person, _opts) do
      "The person with username = #{person.username}, that is #{person.age} years old, has an ID of: #{person.id}"
    end
  end
end
