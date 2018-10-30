import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
main() {
  new File("file.txt").writeAsString("Dart");
  new File("file.txt").readAsString().then((data){
    print(data);
  });
  getData();

}


linearSearch(List<dynamic> list, String name, String password) {
  for (var i = 0; i < list.length; i++){
    if(name == list[i]["name"] && password == list[i]["password"]){
      return print('Success');
    }
  }
  return print('Failed');
}

void getData() async {
  List data;
  var response = await http.get("http://localhost:3000/data");
  data = jsonDecode(response.body);
  linearSearch(data, 'karim', '3');
}