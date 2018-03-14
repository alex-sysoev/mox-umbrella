defmodule App1Test do
  use ExUnit.Case, async: false

  import Mox

  setup :set_mox_global

  @tag :two_mocks
  test "mox works in global mode with 2 behaviours" do
    App1.FirstMock
    |> expect(:hello, fn -> "Hi!" end)
    App1.SecondMock
    |> expect(:bye, fn -> "See ya!" end)

    App1.test_case()
  end

  @tag :one_mock
  test "mox works in global mode using one mock for 2 behaviours" do
    App1.DoubleMock
    |> expect(:hello, fn -> "Hi!" end)
    |> expect(:bye, fn -> "See ya!" end)

    App1.test_case_2()
  end
end
