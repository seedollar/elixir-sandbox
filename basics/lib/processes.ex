defmodule ProcessesExample do

  @doc """
    This example will show how you can listen for a process message, using the receive keyword. 
    You will need to setup a process to listen for messages, by invoking the following command in the iex console: 
    
    pid = spawn(ProcessesExample, :report, [])
    
    You can then invoke the following function to send a message to the pid process:

    send(pid, "testmessage")

    You can also register a pid to an atom label using Process.register(pid, :atomname), then you can reference the process like this:

    send(:atomname, "testMessage2")

  """
  def report do
    receive do 
      x -> IO.puts("received: #{x}")
      report()
    end
  end

  def divideByTwo do
    receive do 
      x -> IO.puts("#{x/2}")
      report()
    end
  end

  def double do
    receive do
      {from, x} -> send(from, x * 2)
      double()
    end
  end
end
