class Product {
  final String name;
  final String description;
  final double price;
  final String image;
  final int amount;

  const Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.amount,
  });
}

// Product product = const Product(
//   name: 'Wireless Earbuds',
//   description: 'Active noise cancelling with a charging case.',
//   price: 129.99,
//   image: 'Images/airpods.jpg',
//   amount: 18,
// );

final List<Product> products = [
  const Product(
    name: 'Wireless Earbuds',
    description: 'Active noise cancelling with a charging case.',
    price: 129.99,
    image: 'Images/airpods.jpg',
    amount: 18,
  ),
  const Product(
    name: 'Smart Watch',
    description: 'Heart rate, GPS, and 7 day battery life.',
    price: 149.50,
    image: 'Images/watch.jpg',
    amount: 5,
  ),
  const Product(
    name: 'Mechanical Keyboard',
    description: 'Hot-swappable switches with RGB lighting.',
    price: 59.00,
    image: 'Images/keyboard.jpg',
    amount: 20,
  ),
  const Product(
    name: 'Laptop Backpack',
    description: 'Water resistant, fits a 15 inch laptop.',
    price: 39.99,
    image: 'Images/backpack.jpg',
    amount: 8,
  ),
  const Product(
    name: 'Bluetooth Speaker',
    description: 'Portable, waterproof, 12 hour playtime.',
    price: 45.25,
    image: 'Images/speaker.jpg',
    amount: 15,
  ),
  const Product(
    name: 'Gaming Mouse',
    description: 'Lightweight, 16000 DPI sensor, 6 buttons.',
    price: 29.90,
    image: 'Images/mouse.jpg',
    amount: 30,
  ),
  const Product(
    name: 'Portable Charger',
    description: '20000 mAh power bank with fast charging.',
    price: 34.99,
    image: 'Images/charger.jpg',
    amount: 25,
  ),
  const Product(
    name: 'Sports Sunglasses',
    description: 'Polarized lenses with UV400 protection.',
    price: 24.50,
    image: 'Images/sunglasses.jpg',
    amount: 40,
  ),
];
