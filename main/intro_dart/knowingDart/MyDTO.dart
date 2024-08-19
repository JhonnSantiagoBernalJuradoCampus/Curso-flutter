class MyDTO {
  int _id;
  String _name;

  MyDTO({required int id, required String name}):
    _id = id,
    _name = name;

  factory MyDTO.fromMap(Map<String, dynamic> jsonMap){
    return MyDTO(
      id: jsonMap['id'],
      name: jsonMap['name']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'name': _name,
    };
  }

  //Getter
  String get name => _name;
  //Setter
  set name(String name){
    _name = name;
  }
  //Getter
  int get id => _id;
  //Setter
  set id(int id){
    _id = id;
  }
}

void main(){
   Map<String, dynamic> miMap = {'id': 1, 'name': 'Santiago'};

  MyDTO myDto = MyDTO.fromMap(miMap);
  print(myDto.name); // Salida: Ejemplo
}