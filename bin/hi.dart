
class Person{
  String _firstName;
  String _lastName;
  Person({ String firstName =" ", String lastName = ""}): _firstName = firstName, _lastName= lastName;

  String get getFullName{
    return  "${this._firstName} ${this._lastName}";
  }

  void show(){
    print("Name: ${this._firstName} ${this._lastName}");
  }
}

class Teacher extends Person {
  int _noOfPublications =0 ;

  Teacher({ String firstName =" ", String lastName = "", int noOfpublication=0}):_noOfPublications = noOfpublication,
        super(firstName: firstName, lastName: lastName);
  @override
  void show( ){
    print("Name: ${super.getFullName} , No of Publication : $_noOfPublications");

  }
}

class Student extends Person{
  double _cgpa ;
  Student({ String firstName =" ", String lastName = "", double cgpa =0.0}):_cgpa = cgpa,
        super(firstName: firstName, lastName: lastName);
  @override
  void show( ){
    print("Name: ${super.getFullName} , CGPA : $_cgpa");

  }
}
void main(){

  List<Person> personList =[];
  personList.add(Teacher(firstName:"Babul", lastName: "Mridha", noOfpublication: 5));
  personList.add(Teacher(firstName:"Istak", lastName: "Ahmed" , noOfpublication: 10));
  personList.add(Student(firstName:"Sapon", lastName: "Ahmed" , cgpa: 3.14));
  personList.add(Teacher(firstName:"Amran", lastName: "Hasan", noOfpublication: 7));
  personList.add(Student(firstName:"Afsan", lastName: "akter", cgpa: 4.19));

  for(Person  person in personList){
    person.show();
  }

}