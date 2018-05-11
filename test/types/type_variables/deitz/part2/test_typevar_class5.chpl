class foo {
  type t;

  var x : t;
  var y : t;

  proc print() {
    writeln(x, " and ", y);
  }
}

var f1 : foo(t=int)    = new borrowed foo(t = int);
var f2 : foo(t=string) = new borrowed foo(t = string, x = "hello", y = "world");

f1.x = 12;
f1.y = 14;

f1.print();
f2.print();
