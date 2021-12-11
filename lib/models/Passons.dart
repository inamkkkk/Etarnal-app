

List<String>? Passions = [];
List<String> toList() {

  Passions!.forEach((item) {
    Passions!.add(item.toString());
  });

  return Passions!.toList();
}

String? gender,meet,datingP,height,weight,name,Bdate,email,password;