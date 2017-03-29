defmodule GameBot.Web.PageController do
  use GameBot.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
