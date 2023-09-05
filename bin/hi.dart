import 'package:hi/hi.dart' as hi;

main() {


  var teacher = Teacher();
  teacher.a('Babul ', 'Midha ', '5');
  teacher.a('Istoak ', 'Ahamed ', '10');
  teacher.a('Amram ', 'Hosan ', '7');
  var student = Student();
  student.a('Sapon ', 'Ahamed ', '3.14');
  student.a('Jamal ', 'Ahamed', '4.19');
  var aa = student.persons;
  var bb = teacher.persons;



  for (var prop in bb) {
    print(prop);
  }



  for (var prop in aa) {
    print(prop);
  }

}




class Person {
  List<String> persons = [];
  a(String frist, String last, var aa) {
    print(persons);
  }
}




class Teacher extends Person {
  @override


  a(String frist, String last, var aa) {

    persons.add('name: ' + frist + last +', pubbahitic: '+aa);

  }
}



class Student extends Person {
  @override
  a(String frist, String last, var aa) {

    persons.add('name: ' + frist + last+ ', CGPA: ' + aa );

  }
}










