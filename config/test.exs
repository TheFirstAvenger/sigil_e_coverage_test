use Mix.Config

# Configure your database
config :sigil_e_test, SigilETest.Repo,
  username: "postgres",
  password: "postgres",
  database: "sigil_e_test_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sigil_e_test, SigilETestWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
