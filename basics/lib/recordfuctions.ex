defmodule RecordFunctionsExample do

  require User
  require Account
  require Logger

  def processUser(u = User.user()) do
    Logger.info("User is active: #{User.user(u, :active)}")    
  end

  def processAccount(acc = Account.account()) do
    Logger.info("Account No: #{Account.account(acc, :accountNo)}")
  end

  def processAccountPatternMatch(Account.account(description: desc, active: isActive)) when isActive == true do
    Logger.info("The account with description: #{desc}, is currently active: #{isActive}")   
  end
end
