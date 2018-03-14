defmodule App1 do
  @moduledoc """
  Documentation for App1.
  """

  def test_case() do
    Task.Supervisor.start_child(App1.TaskSupervisor, fn ->
      App1.FirstMock.hello()
      App1.SecondMock.bye()
    end)
  end

  def test_case_2() do
    Task.Supervisor.start_child(App1.TaskSupervisor, fn ->
      App1.DoubleMock.hello()
      App1.DoubleMock.bye()
    end)
  end
end
