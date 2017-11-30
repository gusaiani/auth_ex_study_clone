# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :auth_ex,
  ecto_repos: [AuthEx.Repo]

# Configures the endpoint
config :auth_ex, AuthExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rYKugsXc0bjoS/cWM26t9WObFjMru1R7dLqc0Pca/gQEk+tUV2GwZzPcLPjORL2i",
  render_errors: [view: AuthExWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AuthEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
