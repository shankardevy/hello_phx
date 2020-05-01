# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_phx,
  ecto_repos: [HelloPhx.Repo]

# Configures the endpoint
config :hello_phx, HelloPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VFGFAlGsEXBGWOx4HWCnLmtUHyGz3jJbtHq6wxDS/Lo7kXHamW7/r+AJJduBsG/F",
  render_errors: [view: HelloPhxWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloPhx.PubSub,
  live_view: [signing_salt: "F5XFCX4A"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
