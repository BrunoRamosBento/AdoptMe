class Pet {

  String name;
  int rating;
  bool adopted;
  final String assetName;

  Pet(this.name, this.rating, this.adopted, this.assetName);

  bool get isAdopted => adopted;

}