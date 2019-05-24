# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sigil_e_test,
  ecto_repos: [SigilETest.Repo]

# Configures the endpoint
config :sigil_e_test, SigilETestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UTDWU093vWdM6FmuEVja8H9vjBaMTZEo/r35q8A7N4mv4WTepGgEdG0NqMc2vPMU",
  render_errors: [view: SigilETestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SigilETest.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
