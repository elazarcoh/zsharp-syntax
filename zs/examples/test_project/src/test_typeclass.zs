//import { print } from Python;
//import { Foo } from "src/main.zs";
// import { Foo } from "test_project.main.zs"; // circular import. infinite loop


typeclass IPrint {
    fun print();
}


//typeclass IPrint(Foo) {
//    fun print() {
//        Foo.baz();
//        print(IPrint(Foo).print);
//        print(print);
//        print(this);
//    }
//}


typeclass IPrint(i64) {
    fun print(this: i64) {
        print("Number");
        IPrint(i64).print(this, "Hello");
    }

    fun print(this: i64, x: string) {
        print("IPrint<i64>.print(i64, string)");
    }
}


typeclass IPrint(f64) {
    fun print(this: f64) {
        print("Float!,");
    }
}


fun do_print(x: IPrint)
{
    x.print();
}

// do_print(Foo());
do_print(45);
do_print(3.14);


typeclass MyTypeclass {
    fun my_api(this: string, value: string);
}

typeclass MyTypeclass(string) {
    fun my_api(this: string, value: string) {
        print("Typeclass.my_api(string, string) is implemented on string! " + this + value);
    }
}

var my_typeclass: MyTypeclass = "Hello";
my_typeclass.my_api(", Typeclasses!");
