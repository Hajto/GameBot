# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :game_bot,
  ecto_repos: [GameBot.Repo]

# Configures the endpoint
config :game_bot, GameBot.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3VN9rFTyb8RWM0IGtGY6vjoR4sRtqN7XMld2HIEGSL9B3MPGY8Dl5k5SKC6MS4hR",
  render_errors: [view: GameBot.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GameBot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
