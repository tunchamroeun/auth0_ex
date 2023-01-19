defmodule PrimaAuth0Ex.Redis.RedixCache do
  @behaviour PrimaAuth0Ex.Redis.Cache

  @impl true
  def get(key), do: Redix.command(PrimaAuth0Ex.Redix, ["GET", key])

  @impl true
  def set(audience, token, expiration),
    do: Redix.command(PrimaAuth0Ex.Redix, ["SET", audience, token, "EX", expiration])
end
