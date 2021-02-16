@Renderer(#renderFoo, Context<Foo>())
@Renderer(#renderBar, Context<Bar>())
@Renderer(#renderBaz, Context<Baz>())
library dartdoc.testing.foo;

import 'package:dartdoc/src/mustachio/annotations.dart';

class FooBase<T extends Object> {
  T baz;
}

class Foo extends FooBase<Baz> {
  String s1;
  bool b1;
  List<int> l1;
  @override
  Baz baz;
}

class Bar {
  Foo foo;
  String s2;
  Baz baz;
  bool l1;
}

class Baz {
  Bar bar;
}
