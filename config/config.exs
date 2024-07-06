use Mix.Config

config :miniature_job, MiniatureJob.Scheduler,
       jobs: [{"* * * * *", fn -> GenServer.cast(:aleatory_server, :write) end}]
