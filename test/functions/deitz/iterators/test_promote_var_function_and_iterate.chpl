var A: [1..3] int;

def foo(i: int) var {
  if (setter) {
    writeln("foo called in setter context");
  }
  return A(i);
}

for t in foo(1..3) {
  writeln(t);
}

for i in foo(1..3) {
  i = 1;
}

for t in (foo(1..3), 1..3) {
  writeln(t);
}

for t in (foo(1..3), 1..3) {
  t(1) = t(1) + 1;
  writeln(t);
}

def iter() var {
  for j in foo(1..3) {
    yield j;
  }
}

for i in iter() {
  writeln(i);
}

for i in iter() {
  i = i + 1;
  writeln(i);
}

def iter2() var {
  for i in 1..3 {
    yield foo(i);
  }
}

for i in iter2() {
  writeln(i);
}

for i in iter2() {
  i = i + 1;
  writeln(i);
}

