defmodule UselessApi.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/do-nothing" do
    send_resp(conn, 200, "The api does nothing, it's just an api")
  end

  get "/do-something" do
    _ = "love you"
    send_resp(conn, 200, "This api does something, but you don't know it")
  end
end
