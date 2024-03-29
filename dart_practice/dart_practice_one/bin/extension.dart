class Machine {}

extension MyMachineExt on Machine {
  void printing() => print('printing...');
  void scanning() => print("scanning...");
}

void main() {
  final machine = Machine();
  machine.printing();
  machine.scanning();
}
