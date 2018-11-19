use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :adote_um_ponto, AdoteUmPontoWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :adote_um_ponto, AdoteUmPonto.Repo,
  username: "postgres",
  password: "postgres",
  database: "adote_um_ponto_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
