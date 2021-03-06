defmodule Facebex.Mixfile do
  use Mix.Project

  def project do
    [app: :facebex,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      applications: [:logger, :httpoison],
      mod: {Facebex, []}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:poison, "~> 1.3", github: "devinus/poison"},
      {:httpoison, "~> 0.6"},
      {:timex, "~> 0.13.3"},
      {:dexts, "0.2.0"},
      {:exvcr, "~> 0.3", only: [:dev, :test]}
    ]
  end
end
