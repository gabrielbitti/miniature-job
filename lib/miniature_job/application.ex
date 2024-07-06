defmodule MiniatureJob.Application do
  use Application

  def start(_type, _args) do
    children = [
      MiniatureJob.AleatoryServer,
      MiniatureJob.Scheduler
    ]

    opts = [
      strategy: :one_for_one,
      name: MiniatureJob.Supervisor
    ]

    Supervisor.start_link(children, opts)
  end
end
