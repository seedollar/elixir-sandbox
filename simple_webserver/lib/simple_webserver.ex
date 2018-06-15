defmodule SimpleWebserver do
  @moduledoc """
  Documentation for SimpleWebserver.
  """

  import Plug.Conn


  def init(options) do
    options
  end

  @doc """
  A simple web server example using cowboy and plug.
  """
  def first_plug(conn,_opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello World")
  end
end
