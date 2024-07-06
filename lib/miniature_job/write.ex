defmodule Mix.Tasks.Write do
  @moduledoc """
  Write random number into file.txt

  `mix write`
  """

  use Mix.Task

  @shortdoc "Writes a rando number into file.txt"
  def run(_) do
    MiniatureJob.WriteRandomNumber.write()
  end
end
