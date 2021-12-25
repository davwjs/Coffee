import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, beanType, roastingType, type;
  final List<String> images, ingredients;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
    this.beanType,
    this.roastingType,
    this.ingredients,
    this.type,
  });
}

List<Product> demoEspressoProducts = [
  Product(
    id: 1,
    images:[
      'assets/images/espresso.jpeg',
      'assets/images/espresso_2.jpeg',
      'assets/images/espresso_3.jpeg',
    ],
    title: "Espresso",
    price: 3.00,
    description: 'Espresso is a coffee-brewing method of Italian origin, in which a small amount of nearly boiling water is forced under 9–10 bars of pressure through finely-ground coffee beans.',
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    beanType: "Arabica",
    roastingType: "Medium",
  ),
  Product(
    id: 2,
    images:[
      'assets/images/macchiato.jpeg',
    ],
    title: "Macchiato",
    price: 3.50,
    description: 'Caffè macchiato, sometimes called espresso macchiato, is an espresso coffee drink with a small amount of milk, usually foamed.',
    rating: 4.7,
    isFavourite: true,
    beanType: "Arabica",
    roastingType: "Medium",
  ),
  Product(
    id: 3,
    images:[
      'assets/images/cortado.jpeg',
    ],
    title: "Cortado",
    price: 3.75,
    description: 'A cortado is a beverage consisting of espresso mixed with a roughly equal amount of warm milk to reduce the acidity.',
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
    beanType: "Arabica",
    roastingType: "Medium",
  ),
  Product(
    id: 4,
    images:[
      'assets/images/flatwhite.jpeg',
    ],
    title: "Flat White",
    price: 4.00,
    description: 'A flat white is a coffee drink consisting of espresso with microfoam. It is comparable to a latte, but smaller in volume and with less microfoam.',
    rating: 4.8,
    isPopular: true,
    beanType: "Arabica",
    roastingType: "Medium",
  ),
  Product(
    id: 5,
    images:[
      'assets/images/cappuccino.jpeg',
    ],
    title: "Cappuccino",
    price: 4.00,
    description: 'A cappuccino is an espresso-based coffee drink that originated in Italy, and is prepared with steamed milk foam. ',
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    beanType: "Arabica",
    roastingType: "Medium",
  ),
  Product(
    id: 6,
    images:[
      'assets/images/latte.jpeg',
    ],
    title: "Latte",
    price: 4.50,
    description: 'Caffè latte, often shortened to just latte in English, is a coffee drink of Italian origin made with espresso and steamed milk.',
    rating: 4.9,
    isFavourite: true,
    isPopular: true,
    beanType: "Arabica",
    roastingType: "Medium",
  ),
  Product(
    id: 7,
    images:[
      'assets/images/americano.jpeg',
    ],
    title: "Americano",
    price: 3.50,
    description: 'Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee.',
    rating: 4.9,
    isFavourite: true,
    beanType: "Arabica",
    roastingType: "Medium",
  ),
  Product(
    id: 8,
    images:[
      'assets/images/mocha.jpeg',
    ],
    title: "Mocha",
    price: 5.00,
    description: 'A caffè mocha, also called mocaccino, is a chocolate-flavoured warm beverage that is a variant of a caffè latte, commonly served in a glass rather than a mug.',
    rating: 4.6,
    isPopular: true,
    beanType: "Arabica",
    roastingType: "Medium",
  ),
];

List<Product> demoBrewedProducts = [
  Product(
    id: 1,
    images:[
      'assets/images/frenchpress.jpeg',
    ],
    title: "French Press",
    price: 3.00,
    description: 'A French press (also called press pot, coffee press, coffee plunger or cafetière) is a special machine used to make coffee.',
    rating: 4.0,
    isFavourite: true,
    beanType: "Arabica",
    roastingType: "Dark",
  ),
  Product(
    id: 2,
    images:[
      'assets/images/pourover.jpg',
    ],
    title: "Pour Over",
    price: 5.00,
    description: 'The pour over method involves pouring hot water through coffee grounds in a filter. The water drains through the coffee and filter into a carafe or mug.',
    rating: 4.7,
    isFavourite: true,
    isPopular: true,
    beanType: "Arabica",
    roastingType: "Dark",
  ),
  Product(
    id: 3,
    images:[
      'assets/images/coldbrew.jpeg',
    ],
    title: "Cold Brew",
    price: 5.00,
    description: 'Cold brew coffee is made chilled, never heated, and with a higher coffee to water ratio than regular drip coffee.',
    rating: 4.9,
    isFavourite: true,
    isPopular: true,
    beanType: "Arabica",
    roastingType: "Dark",
  ),
];

List<Product> demoPastriesProducts = [
  Product(
    id: 1,
    images: [
      'assets/images/croissant.jpeg',
    ],
    title: "Croissant",
    price: 5.00,
    description:
    'A croissant is a buttery, flaky, viennoiserie pastry of Austrian origin, but mostly associated with France.',
    rating: 4.9,
    isFavourite: true,
    isPopular: true,
    ingredients: [
      "Butter",
      "Flour",
      "Yeast",
      "Egg",
    ],
  ),
  Product(
    id: 2,
    images: [
      'assets/images/castella.jpeg',
    ],
    title: "Castella",
    price: 6.00,
    description:
    'Castella is a kind of wagashi originally developed in Japan based on the "Nanban confectionery".',
    rating: 4.7,
    isFavourite: true,
    isPopular: true,
    ingredients: [
      "Honey",
      "Flour",
      "Milk",
      "Egg",
      "Sugar",
    ],
  ),
];

List<Product> demoTeaProducts = [
  Product(
    id: 1,
    images: [
      'assets/images/greentea.jpeg',
    ],
    title: "Japanese Sencha",
    price: 4.00,
    description: 'Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong teas and black teas.',
    rating: 4.0,
    isPopular: true,
    type: "Green",
  ),
  Product(
    id: 2,
    images: [
      'assets/images/earlgrey.jpeg',
    ],
    title: "Earl Grey",
    price: 4.00,
    description: 'Earl Grey tea is a tea blend which has been flavoured with the addition of oil of bergamot. The rind\'s fragrant oil is added to black tea to give Earl Grey its unique taste.',
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    type: "Black",
  ),
  Product(
    id: 3,
    images: [
      'assets/images/englishbreakfast.jpeg',
    ],
    title: "English Breakfast",
    price: 5.00,
    description: 'English breakfast tea or simply breakfast tea is a traditional blend of black teas originating from Assam, Ceylon and Kenya. ',
    rating: 4.7,
    isPopular: true,
    type: "Black",
  ),
  Product(
    id: 4,
    images: [
      'assets/images/chai.jpeg',
    ],
    title: "Chai",
    price: 5.00,
    description: 'Masala chai is a tea beverage made by boiling black tea in milk and water with a mixture of aromatic herbs and spices. ',
    rating: 4.9,
    isPopular: true,
    type: "Black",
  ),
  Product(
    id: 5,
    images: [
      'assets/images/peppermint.jpeg',
    ],
    title: "Peppermint",
    price: 4.00,
    description: 'Mint tea is a herbal tea made by infusing mint leaves in hot water.',
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
    type: "Herbal",
  ),
  Product(
    id: 1,
    images: [
      'assets/images/rooibos.jpeg',
    ],
    title: "Rooibos",
    price: 4.00,
    description: 'Rooibos, meaning "red bush"; is a broom-like member of the plant family Fabaceae that grows in South Africa\'s fynbos.',
    rating: 4.1,
    type: "Red Bush",
  ),
];
