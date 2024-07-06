defmodule MiniatureJobTest.WriteRandomNumberTest do
  use ExUnit.Case

  test "2 escritas no arquivo geram numeros diferentes" do
    MiniatureJobTest.WriteRandomNumberTest.escreve()
    first_content = File.read!(Path.join([
      :code.priv_dir(:miniature_job),
      "file.txt"
    ]))

    second_content = File.read!(Path.join([
      :code.priv_dir(:miniature_job),
      "file.txt"
    ]))

    assert first_content != second_content
  end
end