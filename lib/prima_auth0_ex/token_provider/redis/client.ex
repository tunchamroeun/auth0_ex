defmodule PrimaAuth0Ex.Redis.Client do
  @moduledoc """
  Behaviour that defines a Redis client interface.
  """

  @callback get(String.t()) :: {:ok, any()} | {:error, any()}
  @callback set(String.t(), String.t(), integer()) :: {:ok, any()} | {:error, any()}
end
