

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);
  String get fullName {
    return firstName + " " + lastName;
  }
}

void main() {
  Person p1 = Person("Thida", "Chan");
  print("Her name is ${p1.fullName}");
}
