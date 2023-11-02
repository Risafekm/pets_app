class SearchModel {
  String title;
  String image;
  String description;
  String price;
  String location;

  SearchModel(
      {required this.title,
      required this.image,
      required this.description,
      required this.location,
      required this.price});
}

List<SearchModel> cageModel = [
  SearchModel(
      title: 'Pet Vogue Carrier for Dogs and Cats (Blue & Black)',
      image:
          'https://supertails.com/cdn/shop/products/Frame2_14_1.jpg?v=1696579648',
      description:
          'The Pet Vogue Carrier is perfect for both Cats and Dogs. Portable kennel has a durable construction & door latches for security. The pet carrier meets most airline cargo specifications for easy sky travel & has a carrying handle for transport.',
      location: 'Ernakulam',
      price: "₹2200"),
  SearchModel(
      title: 'amazon basics Two Door Top Load Pet Carrier',
      image:
          'https://m.media-amazon.com/images/I/41najSl8TvL._SY300_SX300_QL70_FMwebp_.jpg',
      description:
          'Two-door, top-load model allows for easy loading of your cat or dog',
      location: 'delhi',
      price: "₹3000"),
  SearchModel(
      title: 'Cat Cage',
      image:
          'https://m.media-amazon.com/images/I/51n06GjEOYL._SX300_SY300_QL70_FMwebp_.jpg',
      description:
          'Metal Construction : The crate features durable metal-wire construction for strength and optimal ventilation and visibility. Rounded corners help protect pets',
      location: 'goa',
      price: "₹2500"),
  SearchModel(
    title: 'Cat Cage',
    image: 'https://m.media-amazon.com/images/I/51-8nPmxvjL.jpg',
    description:
        'Metal Construction : The crate features durable metal-wire construction for strength and optimal ventilation and visibility. Rounded corners help protect pets',
    location: 'aluva',
    price: "₹1000",
  ),
  SearchModel(
      title: 'Midwest Foldable Metal Pet Dog Exercise Fence Pen with Gate',
      image: 'https://m.media-amazon.com/images/I/51-8nPmxvjL.jpg',
      description:
          'Indoor/outdoor portable 24-inch play and exercise pen with door; for dogs up to 16 inches tall.Suitable For Dachshund,Chihuahua,Shih Tzu,Pomeranian,Pug,Beagle,Bulldog,English Cocker Spaniel, Lhasa Apso.',
      location: 'Aluva',
      price: "₹600"),
];
