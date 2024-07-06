use Mix.Config

config :elixir_teste, MiniatureJob.Scheduler,
       jobs: [{"* * * * *", fn -> GenServer.cast(:servidor_aleatorio, :escreve) end}]
