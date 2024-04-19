
class ArithmeticModel{
  final int first;
  final int second;

  ArithmeticModel({
    required this.first,
    required this.second,
});

  //add
  int add(){
    return first + second;
  }

  //sub
  int sub(){
    return first -second;
  }


}