class CircleModel{
  final double radius;

  CircleModel(
      {
    required this.radius
});

  double circleSquare(){
    return (radius!*radius!*3.16);
  }
}