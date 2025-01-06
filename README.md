# Elixir Enum.each Premature Termination

This repository demonstrates a subtle bug in Elixir where using `Process.exit` inside an `Enum.each` function can lead to premature termination of the enumeration without raising an exception. This behavior can be unexpected and difficult to debug.

The `bug.exs` file contains the problematic code. The `bugSolution.exs` file shows a corrected version that uses `Enum.reduce` or a more robust error handling mechanism.

## Reproducing the Bug

1.  Clone this repository.
2.  Run `elixir bug.exs`.
3. Observe that the enumeration stops at the element '3' without an error message.

## Solution

The solution involves using `Enum.reduce` or implementing more comprehensive exception management using try-catch blocks, ensuring that the enumeration completes as expected, even in the face of unexpected process exits.