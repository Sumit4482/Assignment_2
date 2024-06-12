class Vehicle{
  var topSpeed : Int
  var numberOfWheels : Int
  init(topSpeed: Int, numberOfWheels: Int){
    self.topSpeed = topSpeed
    self.numberOfWheels = numberOfWheels
  }
  func move(){
    print("Moving");
  }
}

class Car : Vehicle{
  var numberOfDoors : Int
  init(topSpeed: Int, numberOfWheels: Int, numberOfDoors:Int){
    self.numberOfDoors = numberOfDoors;
    super.init(topSpeed: topSpeed, numberOfWheels: numberOfWheels)
  }
  override func move(){
    print("Car is Moving");
  }
}

class Bike : Vehicle{
var numOfGears : Int
  init(topSpeed: Int, numberOfWheels: Int, numOfGears:Int){
    self.numOfGears = numOfGears;
    super.init(topSpeed: topSpeed, numberOfWheels: numberOfWheels)
  }
  
  override func move(){
    print("Bike is Moving");  
  }
  
}

var vehicles:[Vehicle] = [Vehicle]()

var c1 = Car(topSpeed: 100, numberOfWheels: 4, numberOfDoors: 4);
var c2 = Car(topSpeed: 200, numberOfWheels: 4, numberOfDoors: 4);
var b1 = Bike(topSpeed: 100, numberOfWheels: 2, numOfGears: 4);
var b2 = Bike(topSpeed: 200, numberOfWheels: 2, numOfGears: 4)


vehicles.append(c1)
vehicles.append(b1)
vehicles.append(c2)
vehicles.append(b2)


func describeVehicles(vehicles:[Vehicle]){
  for i in vehicles{
    if let car = i as? Car{
      print("Car Top Speed is \(car.topSpeed) and Number of Doors is \(car.numberOfDoors)")
    }
    else if let bike = i as? Bike{
      print("Bike Top Speed is \(bike.topSpeed) and Number of Gears is \(bike.numOfGears)")
    }
  }


  for i in vehicles{
    if i is Car{
      print("\(i) is Car");
    }else if i is Bike{
      print("\(i) is Bike");
    }
  }
}


describeVehicles(vehicles: vehicles)

