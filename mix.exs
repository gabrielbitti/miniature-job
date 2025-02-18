defmodule MiniatureJob.MixProject do
  use Mix.Project

  def project do
    [
      app: :miniature_job,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MiniatureJob.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:quantum, "~> 3.4"},
      {:mock, "~> 0.3.8"}
    ]
  end
end
