defmodule MiniatureJob.WriteRandomNumber do
  def write do
    file_path = Path.join([
      :code.priv_dir(:elixir_teste),
      'file.txt'
    ])

    random_number = :rand.uniform(1000)
    File.write!(file_path, "Number: #{random_number}")
  end
end
