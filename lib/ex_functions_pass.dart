
class Car {

  Style CarStyle  ;
  Model CarModel  ;
  Year CarYear  ;
  Car(this.CarStyle,this.CarModel,this.CarYear);
}
enum Style{hatchBack,coupe,comfort}
enum Model{lancer,atrage,boma}
enum Year{z98,z2002, z2005}
enum Gender{
   mael, female
}
int calc (int n1, int n2, Function calc){
  return calc(n1,n2);
}

int add (int n1, int n2){return n1+n2;}

//for only study and learning
//print(calc(15, 10, add));
Car newCar1 = Car( Style.hatchBack,Model.boma,Year.z98);
Car newCar2 = Car(Style.coupe,Model.lancer,Year.z2002);
Car newCar3 = Car(Style.comfort,Model.atrage,Year.z2005);
//print('${newCar1.CarYear} , and ${newCar2.CarYear} and ${newCar3.CarYear}');
