class Circle{
  var radius: Double
  init(radius: Double){
    self.radius = radius
  }
}

extension Circle{
  var area: Double{
    radius * radius * 3.14;
  }
}

var c1 = Circle(radius: 5)
print(c1.area)