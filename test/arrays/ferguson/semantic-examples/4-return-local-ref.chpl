use myrecord;
proc f() ref {
  var localArray:[1..2] R;
  return localArray;
}

writeln(f()[1]);

// Is f() be a valid function? Or an error?
