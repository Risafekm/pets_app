class PetModel {
  String name;
  String image;

  PetModel({required this.image, required this.name});
}

List<PetModel> petModel = [
  PetModel(
      image:
          'https://m.media-amazon.com/images/I/71Lo-TSnSyL._AC_UF1000,1000_QL80_.jpg',
      name: 'Cage'),
  PetModel(
      image:
          'https://m.media-amazon.com/images/I/516nfLDrN0L._AC_UF1000,1000_QL80_.jpg',
      name: 'Pet'),
  PetModel(
      image:
          'https://www.vetstreet.com/wp-content/uploads/2023/06/shutterstock_2221358305.jpg',
      name: "Pet's Food"),
];
