class BaseClass {
  var a, b: int;

  proc init(b: int) {
    this.b = b;
    // super.init(); // This initializer is logically Phase 1 only, but today,
    // we have to explicitly state that or b gets given two values.  Should
    // Phase 1 be the default?  Should our compiler optimize this test to make
    // its contents be in Phase 1 after determining they can be?  Or should the
    // user get trained to write super.init() at the end of initializers like
    // this?
  }
}

class DerivedClass: BaseClass {
  var c: int;

  proc init(b:int, c:int) {
    this.c = c;
    super.init(b);
  }
}

var D = new DerivedClass(1,2);

writeln(D);

delete D;
