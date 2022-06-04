//Closures are first class citizens

// Function definition
var name: String = "Alex"

// function definition, doesnt get run until the function gets called
func somefunc() {
    print("Inside function body")
}

// CLOSURE SYNTAX DEFINITION
// This one takes in no arguments and returns no arguments.
// We can use void if we really want to

//var closure: () -> () = {
    //print ("Closure executed.")
// }
//closure()

// CLOSURES AS FUNCTION PARAMETERS AND CLOSURE TRAILING SYNTAX
// This will take in two arguments
          //  - The first parameter is a string.The second is a closure since it uses closure syntax as dictated earlier
// The final part of the function is excecuting the closure

func greeting(_ name: String, action: () -> ()) {
    print("Hello \(name)")
    action()
}

greeting("BOB"){ // using trailing closure syntax
    print("name has been printed")
}


// CLOSURES AS OPTIONAL FUNCTION PARAMETERS
// The user doesnt have to use every parameter if they dont want to

func action(_ title: String, closure: (() -> ())? = nil) {
    print("The title of the action is \(title)")
    
    // must unwrap the optional otherwise the closure parameter wont be passed in.
    
    closure?()
}

//Xcode normally screams at us when we dont use every parameter, however we have an optional so we dont need to insert that parameter
// We can add a trailing closure

action("Learning about closures"){
    print("action is complete")
    }


//@escaping closures


// shorthand syntax
// closures with arguments
// closures as return types

