fun outer(y) {
    var x = 3; // x is defined in the current frame

    fun inner() {
        print(x); // reference to outside (i.e. the parent scope)
        x = x + 1; // changes the external copy, because this scope doesn't have a variable 'x'
        var x = x; // create a local copy with the current value of x
        x = x + 1; // changes the local copy
    }

    x = y; // changes 'x' in this scope

    return inner;
}

var o1 = outer(5); // new frame
outer(6); // new frame
o1(); // same frame of o1
o1(); // same frame of o1


fun test_export() {
    fun inner(x) {
        export var export_x = x;

        return fun() {
            print(export_x);
        };
    }

    var fn = inner("Inner");

    fn(); // Inner

    export_x = "Changed";

    fn(); // Changed
}

test_export();
