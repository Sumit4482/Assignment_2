var myString: String = "Hello World"
var myInt: Int = 10
var myBool: Bool = true
var myDouble: Double = 3.14
var myCharacter: Character = "A"
class Student{
  var rollNo:Int
  var name: String

  init(rollNo: Int, name: String){
    self.rollNo = rollNo
    self.name = name
  }
}

var s1 = Student(rollNo: 1, name: "Sumit")
var arr: [Any] = [myString, myInt, myBool, myDouble, myCharacter, s1]

func describeElements(elements: [Any]){
  for i in arr{
    print("This element is of type : ",type(of: i))
  }
}

describeElements(elements: arr)

