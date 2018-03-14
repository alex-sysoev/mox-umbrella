defmodule App1Test do
  use ExUnit.Case, async: false

  import Mox

  setup :set_mox_global

  test "mox works in global mode with 2 behaviours from umbrella" do
    App1.FirstMock
    |> expect(:hello, fn -> "Hi!" end)

    App1.SecondMock
    |> expect(:bye, fn -> "See ya!" end)

    App1.test_case()
  end
end
