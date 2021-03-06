class C {
  param p1: int;
  param p2: int;
}

var c1 = new C(2,1);
var c2 = new C(6,2);
var c3 = new C(9,3);

proc f(c: C(1+1,?p)) {
  writeln("1: ", p, ": ", c);
}

proc f(c: C(1+2+3,?p)) {
  writeln("2: ", p, ": ", c);
}

f(c1);
f(c2);
f(c3);
