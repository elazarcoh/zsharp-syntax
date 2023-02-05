module A {
    fun A() {

    }
    class Foo {

    }

    typeclass TFoo {

    }
}

print(A);
print(A.A);
print(A.Foo);
print(A.TFoo);


print(module {

});


export module ExportedModule {
    fun exported() {
        print("Exported from module ExportedModule");
    }
}
