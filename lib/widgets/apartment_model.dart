
class Apartment{
  String imageUrl;
  String title;
  String location;
  String description;
  int bedrooms;
  int bathrooms;
  String bed_imageUrl;
  String bath_imageUrl;
  double lat;
  double long;
  int price;

  Apartment({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.description,
    required this.bedrooms,
    required this.bathrooms,
    required this.bed_imageUrl,
    required this.bath_imageUrl,
    required this.lat,
    required this.long,
    required this.price
  });
}
List<Apartment> apartments = [
   Apartment(
       imageUrl: "https://i.pinimg.com/originals/58/10/58/5810584e4ed79cd8bb0707e78cf4c136.jpg",
       title: 'Black Modern Abbells House',
       location: 'Mountain Street,California',
       description: "Perfect getaway for all wine lovers and hikers in this serene spanish environment ranch style casita with mountain views!",
       bedrooms: 4,
       bathrooms: 2,
       bath_imageUrl: "https://cdn.decoist.com/wp-content/uploads/2021/06/Modular-black-house-with-balcony-49706.jpg",
       bed_imageUrl: "https://cdn.decoist.com/wp-content/uploads/2021/06/Modular-black-house-with-balcony-49706.jpg",
       lat: 38.296452,
       long: -76.508827,
       price: 920),
  Apartment(
      imageUrl: "https://cdn.decoist.com/wp-content/uploads/2021/06/Modular-black-house-with-balcony-49706.jpg",
      title: 'Black Abbells House',
      location: 'Mountain Street,LA',
      description: "Perfect getaway for all wine lovers and hikers in this serene spanish environment ranch style casita with mountain views!",
      bedrooms: 4,
      bathrooms: 2,
      bath_imageUrl: "https://cdn.decoist.com/wp-content/uploads/2021/06/Modular-black-house-with-balcony-49706.jpg",
      bed_imageUrl: "https://cdn.decoist.com/wp-content/uploads/2021/06/Modular-black-house-with-balcony-49706.jpg",
      lat: 38.296452,
      long: -76.508827,
      price: 1000),
  Apartment(
      imageUrl: "https://cdn.decoist.com/wp-content/uploads/2021/06/Black-house-in-the-woods-with-car-and-pool-72730.jpg",
      title: 'Black Modern House',
      location: 'Mountain Street,Texas',
      description: "Perfect getaway for all wine lovers and hikers in this serene  spanish environment ranch style casita with mountain views!",
      bedrooms: 4,
      bathrooms: 2,
      bath_imageUrl: "https://cdn.decoist.com/wp-content/uploads/2021/06/Modular-black-house-with-balcony-49706.jpg",
      bed_imageUrl: "https://cdn.decoist.com/wp-content/uploads/2021/06/Modular-black-house-with-balcony-49706.jpg",
      lat: 38.296452,
      long: -76.508827,
      price: 1500),
];