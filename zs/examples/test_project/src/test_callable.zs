export class Callable {
    fun "_()"(this, x: string) {
        print("--- CALLABLE ---");
        print(this);
        print("is a callable");
        print(x);
        print("----- END -----");
    }

    fun "_()"(this) {
        print("--- CALLABLE ---");
        print(this);
        print("is a callable");
        print("----- END -----");
    }
}


var callable = Callable();
callable("Hello!");
callable();
