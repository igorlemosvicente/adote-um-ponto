defmodule AdoteUmPonto.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      AdoteUmPonto.Repo,
      # Start the endpoint when the application starts
      AdoteUmPontoWeb.Endpoint
      # Starts a worker by calling: AdoteUmPonto.Worker.start_link(arg)
      # {AdoteUmPonto.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AdoteUmPonto.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    AdoteUmPontoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
