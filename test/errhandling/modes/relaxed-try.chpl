pragma "error mode relaxed"
module mymodule {
  use ThrowError;

  proc propError() throws {
    throwAnError();
  }

  try {
    propError();
  } catch {
    writeln("OK");
  }
}
