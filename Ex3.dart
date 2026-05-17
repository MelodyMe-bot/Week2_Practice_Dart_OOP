class CustomDuration {
  final int _milliseconds;
  // Private constructor - accepts milliseconds directly
  CustomDuration._(this._milliseconds) {
    if (_milliseconds < 0) throw Exception("Duration cannot be negative!");
  }

  // Named constructors
  CustomDuration.fromSeconds(int seconds) :  this._(seconds * 1000);
  CustomDuration.fromMinutes(int minutes) :this._(minutes * 60000);

  CustomDuration.fromHours(int hours) : this._(hours * 3600000);

  
  bool operator >(CustomDuration other) {
    return _milliseconds > other._milliseconds;
  } 
  CustomDuration operator +(CustomDuration other) {
    return CustomDuration._(_milliseconds + other._milliseconds);
  }

  CustomDuration operator -(CustomDuration other) {
    if (other._milliseconds > _milliseconds) {
      throw Exception("Duration cannot be negative!");
    }
    return CustomDuration._(_milliseconds - other._milliseconds);
  }

  int get milliseconds => _milliseconds;
}

void main() {
  CustomDuration d1 = CustomDuration.fromHours(2);

  CustomDuration d2 = CustomDuration.fromMinutes(30);
  CustomDuration total = d1 + d2;
  print(total.milliseconds); // 9000000

  print(d1 > d2);

  CustomDuration diff = d1 - d2;
  print(diff.milliseconds); // 5400000
}
