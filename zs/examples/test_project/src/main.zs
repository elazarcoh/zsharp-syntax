//import { print } from Python;

fun print2(value) {
    print(value);

    return 0;
}

fun no_print() {
    print("This should not be printed.");
}

var v1 = "blah";
{
    var v1 = "blah in a block";
    print("Block!");

    print(v1);
}

if (true) {
    print("TRUE, NO ELSE");
}

if (true) {
    print("TRUE");
} else {
    no_print();
}

if (false) {
    no_print();
} else {
    print("ELSE");
}

print2("Hello, Z#!");
print2(2);
print2(2.2);

fun get(x) {
    return x;
}

{
    fun BLOCK() {}
}

print(get("GET!"));


while (true) {
    print("while true!");
    break;
}


while (false) {
    no_print();
}

while A(true) {
    print("A begin");

    while (true) {
        print("Inner");

        break A;
    }

    no_print();
}


while (false) {

} else {
    print("WHILE ELSE SUCCESS!");
}


while (true) {
    break;
} else {
    no_print();
}

while A(true) {
    while (true) {
        break A;
    } else {
        no_print();
    }
} else {
    no_print();
}

while (false) no_print();
else print("WHILE ELSE SUCCESS");

if (true) print("IF SUCCESS");
else if (false) no_print();
else no_print();

if (false) no_print();
else if (true) print("ELSE IF SUCCESS");
else no_print();

if (false) no_print();
else if (false) no_print();
else print("IF ELSE IF ELSE SUCCESS");


when (1) {
case (1) print("ONE");
} else no_print();

when (1) {
case (2) no_print();
case (3) no_print();
} else print("WHEN ELSE SUCCESS");

when (1) {
case (1) print("ONE");
case (2) no_print();
case (1) no_print();
}

when (1) {
case (2) no_print();
case (1) { print("ONE"); continue; }
case (2) { print("WHEN CONTINUE SUCCESS"); }
case (3) no_print();
} else no_print();

var x = "X is a variable!";
print(x);


export class Foo {
    fun Foo() {}

    fun baz() {
        print("Foo.Foo!");
    }

    var x = 3;
}

class Bar : Foo {

}

print(Bar);
//Foo.x;


print(class {});
print(fun(){});
print(typeclass X { fun do(); });

fun foo() { print("foo!"); }
fun bar() { print("bar!"); }

var fn = foo;
fn();
fn = bar;
fn();

var y = "Hello, " + "World!";
print(y);

var z: i64;

print("z + 5 =", z + 5);

print(y.length());


class Number {
    fun Number(x) {
        this.x = x;
    }

    fun "_+_"(other) {
        return Number(1 + other);
    }

    var x: i64;
}

print(Number(2) + 3);
print(bool);
print(void);
print(unit);
