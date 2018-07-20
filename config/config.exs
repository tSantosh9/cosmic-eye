# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dashboard,
  ecto_repos: [Dashboard.Repo]

# Configures the endpoint
config :dashboard, Dashboard.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4okYzSD6Xv8e5DjuwmsvswUn0GymHPlEDIvVY0MU1KcbMKrRdvRseQL+OmSTFr8l",
  render_errors: [view: Dashboard.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Dashboard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
