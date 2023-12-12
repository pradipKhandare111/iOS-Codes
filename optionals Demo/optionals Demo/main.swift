

//
//let myOptional: String?
//
//myOptional = nil

//if myOptional != nil {
//    let text: String = myOptional!
//    let text2: String = myOptional!
//}else {
//    print("myOptional found to be nil")
//}


//optional binding

//if let safeOptional = myOptional {
//    let text: String = safeOptional
//    let text2: String = safeOptional
//    print(text)
//    print(text2)
//}else {
//    print("myOptional found to be nil")
//}


//nil coalesing opeeartor

//let text: String = myOptional ?? "I am the default value"
//print(text)

//OPtional Struct

struct MyOptional {
    var prop = 123
    func method(){
        print("I am the struct method")
    }
}

let myOptional: MyOptional?
myOptional = MyOptional()
//optional chaining
print(myOptional?.prop)

