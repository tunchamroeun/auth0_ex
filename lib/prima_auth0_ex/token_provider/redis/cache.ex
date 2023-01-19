defmodule PrimaAuth0Ex.Redis.Cache do
  @moduledoc """
  Behaviour that defines a Redis cache interface.
  """

  @callback get(String.t()) :: {:ok, any()} | {:error, any()}
  @callback set(String.t(), String.t(), String.t()) :: {:ok, any()} | {:error, any()}
end
