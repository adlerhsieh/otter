defmodule Otter.PageController do
  use Otter.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
