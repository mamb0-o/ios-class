import UIKit

//Problem 1
var func1:(Int,Int)-> Int
var func2:(String)-> Void
var func3:()-> Int
var func4:()->[()->Void]
var func5:([(Int)->Void])->[String]
var func6:([(Int)->Void])->[(Int)->Void]
var func7:([(Int)->Void]?)->[(Int)->Void]?
var func8:([(Int)->Void]?)->[(Int)->Void]?
var func9:()->((Int)->Int,Int?)

//Problem2
func fakeFunc1(_ x:Int,_ y:Int)->Int{
    return x+y
}
func1=fakeFunc1;

func fakeFunc2(_ s:String)->Void{
    print(s);
}
func2=fakeFunc2;

func fakeFunc3()->Int{
    return Int(Double.pi);
}
func3=fakeFunc3;

func fakeFunc4()->[()->Void] {
    return[]
}
func4=fakeFunc4;

func fakeFunc5(_ input: [(Int)->Void])->[String]{
    var output:[String] = []
                
    return output;
}
func5=fakeFunc5;

func fakeFunc6(_ input: [(Int)->Void])->[(Int)->Void]{
    var output:[(Int)->Void]=[]
    return output;
}
func6=fakeFunc6;

func fakeFunc7(_ input: [(Int)->Void]?)->[(Int)->Void]?{
    var output:[(Int)->Void]?=[]
    return output;
}
func7=fakeFunc7

func fakeFunc8(_ input: [(Int)->Void]?)->[(Int)->Void]?{
    var output:[(Int)->Void]?=[]
    return output;
}
func8=fakeFunc8

func fakeFunc9()->((Int)->Int,Int?){
    var output1:(Int)->Int = { _ in return 1 }
    
    var output2: Int?=1
    
    return(output1,output2)
}
func9=fakeFunc9
