defmodule PkgTar.MixProject do
  use Mix.Project

  @name :pkg_tar
  @version "0.1.0"
  @description """
  Elixir lib for creating tar.gz files with Mix Release.
  """
  @deps [
    {:pkg_core, "~> 0.1"},
    {:vex, "~> 0.8"},
    {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
  ]

  @hex_package [
    name: @name,
    files: ["lib", "mix.exs", "README*", "LICENSE*"],
    maintainers: ["Joakim Nylen <hexpm@joakim.nylen.nu>"],
    licenses: ["MIT"],
    links: %{
      "GitLab" => "https://gitlab.com/jnylen/pkg_tar",
      "Docs" => "https://hexdocs.pm/pkg_tar/"
    }
  ]

  def project do
    [
      app: @name,
      version: @version,
      elixir: ">= 1.9.0",
      start_permanent: Mix.env() == :prod,
      deps: @deps,
      package: @hex_package,
      description: @description
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end
end
