abstract class CalculatorState {}

class InitialState extends CalculatorState {
  InitialState({required this.a, required this.b});
  final int a;
  final int b;
}

class CalculateSurface extends CalculatorState {
  CalculateSurface(this.calculateSurface);
  num calculateSurface;
}

class CircleSurfFace extends CalculatorState {
  CircleSurfFace(this.circleSurfFace);
  num circleSurfFace;
}
