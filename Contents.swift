//: Playground - noun: a place where people can play

import UIKit
//Representing and Throwing Errors
//
//In Swift, errors are represented by values of types that conform to the Error protocol. This empty protocol indicates that a type can be used for error handling.


var str = "Hello, playground"
enum InputError:Error
{
    case makeMissing
    case milageTooLow(Int)
    case milageTooHigh(Int)
}
func shouldByCar(make:String,milage:Int) throws
{
    guard make.count>0 else
    {
        throw InputError.makeMissing;
    }
    switch milage {
    case milage where milage > 100:
        throw InputError.milageTooHigh(milage)
    case milage where milage < 10:
            throw InputError.milageTooLow(milage)
    default:
        print("By the car")
    }
}
do
{
    try shouldByCar(make: "Honda", milage: 151)
}
catch InputError.makeMissing
{
    print("Make Name is missing")
}
catch let  InputError.milageTooHigh(x)  where x > 150
{
    print("Milage Too way,way high!!")
}
catch
{
    print("\(error)")
}

