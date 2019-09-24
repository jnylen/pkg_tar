# PkgTar

`pkg_tar` is a .tar file packager for `Mix Release`.

**Notice:** In all honestly this shouldn't really be needed,
as tar:ing a release is easy in one function.

## Installation

The package can be installed by adding `pkg_tar` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pkg_tar, "~> 0.1.1"}
  ]
end
```

The docs can be found at [https://hexdocs.pm/pkg_tar](https://hexdocs.pm/pkg_tar).

## Usage

Inside of your mix.exs file add to the steps inside of `releases`:

```elixir
steps: [:assemble, &PkgTar.create/1],
```
