defmodule Simbo.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :simbo,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Simboli svg. Esempio aree: aree minerarie",
      package: package(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Simbo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:xml_builder, "~> 2.4"}
    ]
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/arpas-carg/simbo"}
    ]
  end

  defp aliases do
    [
      wv: ["simbo -awv"]
    ]
  end
end
