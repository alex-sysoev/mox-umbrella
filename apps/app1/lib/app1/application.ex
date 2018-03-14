defmodule App1.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {Task.Supervisor, name: App1.TaskSupervisor}
    ]

    opts = [strategy: :one_for_one, name: App1.Supervisor]
    Supervisor.start_link(children, opts)
  end
end