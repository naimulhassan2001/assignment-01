

void main() {
  List personlist = [];
  personlist.add(Teacher("Babul", "Mridha", 5));
  personlist.add(Teacher("Istak", "Ahmed",  10));
  personlist.add(Student("Sapon", "Ahmed",  3.14));
  personlist.add(Teacher("Amran", "Hasan", 7));
  personlist.add(Student("jantul", "akter", 4.19));

  for(Person  person in personlist){
    person.show() ;
  }

}

class Person {
  String? fristName ;
  String? lastName ;

  Person( this.fristName, this.lastName );

  show (){
    print('Name: $fristName $lastName') ;
  }
}

class Teacher extends Person {

  int? noOfPublications ;

  Teacher(super.fristName, super.lastName, this.noOfPublications);

  @override
  show() {
    // TODO: implement show
    print('Name: $fristName $lastName, No of Publication: $noOfPublications') ;
  }

}

class Student extends Person {
  double? cgpa ;

  Student(super.fristName, super.lastName, this.cgpa);


  @override
  show() {
    // TODO: implement show
    print('Name: $fristName $lastName, CGPA: $cgpa') ;

  }

}
