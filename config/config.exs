# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_chat,
  ecto_repos: [ElixirChat.Repo]

# Configures the endpoint
config :elixir_chat, ElixirChatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nzt/yB+1j1Q+EhxJXWwwrRDzQlWP32uBK+hIntq5PKVGhCxRz+fcbA6RdG3Erd3N",
  render_errors: [view: ElixirChatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
