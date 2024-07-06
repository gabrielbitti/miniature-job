defmodule MiniatureJobTest.WriteRandomNumberTest do
  use ExUnit.Case
  import Mock

  test "random numbers are diff" do
    MiniatureJob.WriteRandomNumber.write()
    first_content = File.read!(Path.join([
      :code.priv_dir(:miniature_job),
      "file.txt"
    ]))

    MiniatureJob.WriteRandomNumber.write()
    second_content = File.read!(Path.join([
      :code.priv_dir(:miniature_job),
      "file.txt"
    ]))

    assert first_content != second_content
  end

  test "random numbers are diff with spy" do
    :ets.new(:contents, [:set, :private, :named_table])

    with_mock File, [write!: fn (_path, content) -> :ets.insert_new(:contents, {content}) end] do
      MiniatureJob.WriteRandomNumber.write()
      MiniatureJob.WriteRandomNumber.write()
    end

    contents = :ets.tab2list(:contents)
    [first_value | contents] = contents
    [second_value | _] = contents

    assert first_value != second_value
  end
end