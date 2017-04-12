defmodule PublishPlus.Mixfile do
  use Mix.Project

  def project do
    [
      app: :publish_plus,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [
      applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  def package do
    [
      description: "PublishPlus is an opinionated package publisher for Elixir",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/wojtekmach/publish_plus"},
      maintainers: ["Wojtek Mach"],
    ]
  end
end
