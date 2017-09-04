defmodule CabbageTest.Features.TestTest do
  use Cabbage.Feature, async: false, file: "test.feature"

  defgiven ~r/^a precondition$/, _vars, _state do
    File.open "output", [:append], fn(f) -> IO.puts f, "Step ran" end
    :ok
  end
end
