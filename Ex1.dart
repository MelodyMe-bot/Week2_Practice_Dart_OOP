enum Skill { FLUTTER, DART, OTHER }

class Address {
  String _street;
  String _zipCode;
  String _city;

  Address(this._street, this._zipCode, this._city);

  String get street => _street;
  String get zipCode => _zipCode;
  String get city => _city;
}

class Employee {
  String _name;
  double _baseSalery;
  List<Skill> _skills;
  int _yearsOfExperience;
  Address _address;

  Employee(
    this._name,
    this._baseSalery,
    this._skills,
    this._yearsOfExperience,
    this._address,
  );
Employee.MobileDev({
    required String name,
    required double baseSalery,
    required int yearsOfExperience,
    required Address address,
  }) : _name = name,
       _baseSalery = baseSalery,
       _yearsOfExperience = yearsOfExperience,
       _address = address,
       _skills = [Skill.FLUTTER, Skill.DART];
  String get name {
    return _name;
  }

  double get baselary {
    return _baseSalery;
  }

  List<Skill> get skills {
    return _skills;
  }

  int get yearsOfExperience {
    return _yearsOfExperience;
  }

  Address get address {
    return _address;
  }

  double computeSalary() {
    double total = 1000;
    total += _yearsOfExperience * 500;
    for (Skill s in _skills) {
      if (s == Skill.FLUTTER)
        total += 600;
      else if (s == Skill.DART)
        total += 500;
      else
        total += 1000;
    }
    return total;
  }
}

void main() {
  Employee e1 = Employee("Seyha", 1000, [Skill.FLUTTER], 3, Address("Street 1", "12345", "PhnomPenh"));
  print("${e1.computeSalary()}");
}
