//Implicit Interface
mixin Flyable {
  void fly() {
    print("I'm, flying");
  }
}
mixin Walkable {
  void fly() {
    print("I'm, walking");
  }
}
mixin Swimmable {
  void fly() {
    print("I'm, swimming");
  }
}
class Animal {
  String name = "";
  int age = 0;
  double weight = 0;
  Animal(this.name, this.age, this.weight);
  void eat() {
    print("$name is eating.");
    weight = weight + 0.2;
  }
  void sleep() {
    print("$name is sleeping.");
  }
}

class Bird extends Animal implements Flyable {
  String featherColor;
  Bird(String name, int age, double weight, this.featherColor)
      : super(name, age, weight);
  @override
  void fly() {
    print("$name is flying");
  }
}

class Duck extends Bird with Walkable, Flyable, Swimmable{
  Duck();
} 

void main() {
  var mdpBird = Bird("Gagak", 2, 0.7, "Black");
  mdpBird.fly();
  print("Berat Burung : ${mdpBird.weight}");
  mdpBird.eat();
  print("Berat Burung Sekarang : ${mdpBird.weight}");
}
