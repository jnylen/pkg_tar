defmodule PkgTar do
  @moduledoc """
  Documentation for PkgTar.
  """

  @doc """
  `create/1` allows a `Mix.Release` struct to be inputed.
  """
  def create(%Mix.Release{} = rel) do
    file_path =
      Path.join([
        PkgCore.Config.rel_dest_path(),
        filename(rel)
      ])

    PkgCore.Logger.debug("pkg_tar", "building .tar.gz..")

    :ok = File.mkdir_p(PkgCore.Config.rel_dest_path())

    PkgCore.Compression.compress(
      rel.version_path,
      file_path
    )

    PkgCore.Logger.debug("pkg_tar", "successfully built file_path")

    rel
  end

  defp filename(rel) do
    "#{rel.name}_#{rel.version}_#{PkgCore.Config.detect_arch()}.tar.gz"
  end
end
