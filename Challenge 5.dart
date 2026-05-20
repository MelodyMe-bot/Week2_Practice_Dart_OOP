enum TravelClass { economy, business, firstClass }

class TravelTicket {
  Passenger passenger;
  String destination;
  TravelClass travelclass;
  int? discountCode;

  TravelTicket({
    required this.passenger,
    required this.destination,
    required this.travelclass,
    this.discountCode,
  });
}

class Passenger {
  String name;
  String gender;
  int age;

  Passenger({required this.name, required this.gender, required this.age});
}

void main() {
  Passenger p1 = Passenger(name: 'Thean', gender: 'Male', age: 25);
  TravelTicket ticket = TravelTicket(
    passenger: p1,
    destination: 'Paris',
    travelclass: TravelClass.business,
    discountCode: 8934,
  );
  print(ticket.passenger.name);
  print(ticket.passenger.gender);
  print(ticket.passenger.age);
  print(ticket.destination);
  print(ticket.travelclass);
  print(ticket.discountCode);
}
