import 'package:faker/faker.dart';
import 'package:sekolahku/domain/student.dart';
import 'package:sekolahku/utils/random.dart';

seedStudent() {
  var faker = new Faker();
  var student = new Student();
  student.firstName = faker.person.firstName();
  student.lastName = faker.person.lastName();
  student.mobilePhone = '6238236638';
  student.gender = Student.genders[getRandom(2)];
  student.grade = Student.grades[getRandom(4)];
  student.address = faker.address.streetAddress();
  student.hobbies = Student.hobbiesList;

  return student;
}

generateStudents() {
  List<Student> students = [];
  for (var i = 0; i < 5; i++) {
    students.add(seedStudent());
  }

  return students;
}