defmodule Auth0Ex.TokenProvider.JwksKidsFetcher do
  @moduledoc """
  Behaviour to fetch key ids (aka `kid`s) from a JWKS server
  """

  @callback fetch_kids(Auth0Ex.Auth0Credentials.t()) :: {:ok, [String.t()]} | {:error, any()}
end
