defmodule User do
  require Record

  Record.defrecord :user, User, [id: 0, username: nil, password: nil, email: nil, active: false]
end

defmodule Account do
  require Record

  Record.defrecord :account, Account, [id: 0, accountNo: 0, description: nil, active: false]
end

defmodule WeightConversion do
  require Record
 
  Record.defrecord :weightConversionFactor, WeightConversionFactor, [id: 0, source: nil, target: nil, factor: 0.0, active: false]
end
