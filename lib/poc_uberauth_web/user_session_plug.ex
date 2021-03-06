defmodule PocUberauthWeb.UserSessionPlug do
  import Plug.Conn

  def init(opts), do: opts

  @spec call(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def call(conn, _opts) do
    assign(conn, :user_info, get_session(conn, :user_info))
  end
end
