# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :otter,
  ecto_repos: [Otter.Repo]

# Configures the endpoint
config :otter, Otter.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I358x0vE2FrjX8U4ciF/6bEU+OhjhGGVgEIvJ+a52ZuJD27dt2iz7RHPJPHCy94I",
  render_errors: [view: Otter.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Otter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
