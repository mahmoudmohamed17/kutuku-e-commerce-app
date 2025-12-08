import 'package:flutter/material.dart';

class ProductItemModel {
  final int id;
  final String name;
  final String description;
  final String imgUrl;
  final String category;
  final double price;
  final double rate;
  final int reviewsCount;
  final bool isFavorite;
  final List<Color>? colors;

  ProductItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.category,
    required this.price,
    required this.rate,
    this.reviewsCount = 0,
    this.isFavorite = false,
    this.colors,
  });
}

// Dummy list of products [For testing]
final List<ProductItemModel> dummyProducts = [
  ProductItemModel(
    id: 1,
    name: 'Wireless Headphones',
    description:
        'Experience exceptional audio quality with these premium wireless headphones featuring advanced active noise-cancelling technology. Equipped with 40mm drivers delivering deep bass and crystal-clear highs, these headphones offer an immersive listening experience. The long-lasting battery provides up to 30 hours of continuous playback, while the soft memory foam ear cushions ensure all-day comfort. Built-in microphone for hands-free calls, foldable design for easy portability, and Bluetooth 5.0 for stable connectivity up to 33 feet. Compatible with all your devices and includes a premium carrying case.',
    imgUrl:
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
    category: 'Electronics',
    price: 149.99,
    rate: 4.5,
    reviewsCount: 342,
    colors: [Colors.black, Colors.white, Colors.blue, Colors.red],
  ),
  ProductItemModel(
    id: 2,
    name: 'Smart Watch',
    description:
        'Stay connected and track your fitness goals with this advanced smartwatch featuring a vibrant 1.4-inch AMOLED touchscreen display. Monitor your heart rate 24/7, track your sleep patterns, and access over 100 sport modes including running, cycling, swimming, and yoga. Built-in GPS for accurate route tracking, 5ATM water resistance for swimming and showering, and up to 14 days of battery life. Receive notifications for calls, messages, and apps directly on your wrist. Includes stress monitoring, blood oxygen measurement, breathing exercises, and customizable watch faces. Compatible with both iOS and Android devices.',
    imgUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
    category: 'Electronics',
    price: 299.99,
    rate: 4.7,
    reviewsCount: 528,
    isFavorite: true,
    colors: [Colors.black, Colors.grey, Colors.pink, Colors.green],
  ),
  ProductItemModel(
    id: 3,
    name: 'Leather Backpack',
    description:
        'Crafted from premium full-grain leather, this sophisticated backpack combines timeless style with modern functionality. Features a padded compartment that safely accommodates laptops up to 15.6 inches, along with a tablet sleeve and multiple organizational pockets for your essentials. The spacious main compartment offers ample room for books, documents, and personal items. Adjustable padded shoulder straps and a reinforced back panel provide superior comfort during daily commutes or weekend adventures. Includes a luggage strap for easy attachment to rolling suitcases, YKK zippers for durability, and a water-resistant coating to protect your belongings. Perfect blend of elegance and practicality.',
    imgUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500',
    category: 'Fashion',
    price: 89.99,
    rate: 4.3,
    reviewsCount: 187,
    colors: [Colors.brown, Colors.black, const Color(0xFF8B4513)],
  ),
  ProductItemModel(
    id: 4,
    name: 'Running Shoes',
    description:
        'Engineered for performance and comfort, these lightweight running shoes feature advanced cushioning technology that absorbs impact and provides responsive energy return with every stride. The breathable engineered mesh upper keeps your feet cool and dry during intense workouts, while the seamless construction reduces friction and prevents blisters. High-traction rubber outsole offers excellent grip on various surfaces, and the anatomically designed footbed provides arch support for natural foot movement. Reflective details enhance visibility during low-light conditions. Weighing just 8.5 ounces, these shoes are perfect for daily training, long-distance runs, or casual wear. Available in multiple color options to match your style.',
    imgUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
    category: 'Sports',
    price: 79.99,
    rate: 4.6,
    reviewsCount: 423,
    isFavorite: true,
    colors: [
      Colors.black,
      Colors.white,
      Colors.blue,
      Colors.orange,
      Colors.red,
    ],
  ),
  ProductItemModel(
    id: 5,
    name: 'Coffee Maker',
    description:
        'Wake up to the perfect cup of coffee every morning with this programmable coffee maker featuring a 12-cup thermal carafe that keeps your coffee hot for hours without a heating plate. The advanced brewing system ensures optimal flavor extraction and consistent temperature throughout the brewing process. Program your brew up to 24 hours in advance with the easy-to-use digital display and timer. Features include brew strength selector for regular or bold coffee, automatic pause-and-serve function, removable filter basket for easy cleaning, and a permanent gold-tone filter (paper filters optional). The double-wall stainless steel carafe maintains temperature and freshness while the sleek brushed metal design complements any kitchen décor.',
    imgUrl:
        'https://images.unsplash.com/photo-1517668808822-9ebb02f2a0e6?w=500',
    category: 'Home & Kitchen',
    price: 59.99,
    rate: 4.4,
    reviewsCount: 256,
  ),
  ProductItemModel(
    id: 6,
    name: 'Sunglasses',
    description:
        'Protect your eyes in style with these designer polarized sunglasses featuring premium TAC lenses that provide 100% UV400 protection against harmful UVA and UVB rays. The polarized lenses effectively reduce glare from water, snow, and reflective surfaces, making them perfect for driving, beach activities, and outdoor sports. Lightweight yet durable frame constructed from high-grade acetate ensures comfortable all-day wear, while the spring-loaded hinges provide a secure fit for various face shapes. Scratch-resistant and impact-resistant coating enhances lens durability. Each pair comes with a luxury hard case, microfiber cleaning cloth, and authenticity certificate. Timeless design that never goes out of style.',
    imgUrl:
        'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=500',
    category: 'Accessories',
    price: 129.99,
    rate: 4.2,
    reviewsCount: 143,
    colors: [Colors.black, const Color(0xFF654321), const Color(0xFF8B4513)],
  ),
  ProductItemModel(
    id: 7,
    name: 'Yoga Mat',
    description:
        'Transform your yoga practice with this premium extra-thick yoga mat made from eco-friendly, non-toxic TPE material that is safe for you and the planet. Measuring 72 inches long and 24 inches wide with a generous 6mm thickness, this mat provides superior cushioning and joint protection for all yoga styles, pilates, and floor exercises. The innovative dual-layer non-slip texture ensures excellent grip even during the most challenging poses and hot yoga sessions. Lightweight and easy to roll, it includes a convenient carrying strap for transport to the studio or outdoor practice. Moisture-resistant, easy to clean, and odor-free. Free from latex, PVC, and harmful chemicals. Reversible design with beautiful color combinations.',
    imgUrl:
        'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=500',
    category: 'Sports',
    price: 34.99,
    rate: 4.8,
    reviewsCount: 612,
    isFavorite: true,
    colors: [
      Colors.purple,
      Colors.pink,
      Colors.blue,
      Colors.green,
      Colors.teal,
    ],
  ),
  ProductItemModel(
    id: 8,
    name: 'Desk Lamp',
    description:
        'Illuminate your workspace with this modern LED desk lamp featuring five brightness levels and five color temperature modes (3000K-6000K) to create the perfect lighting for any task or mood. Whether you are reading, studying, working on your computer, or relaxing, easily customize your lighting with touch-sensitive controls. The flexible gooseneck design allows 360-degree rotation for precise light positioning, while the energy-efficient LEDs last up to 50,000 hours and consume 75% less energy than traditional bulbs. Built-in USB charging port keeps your devices powered while you work. Features eye-care technology that reduces flicker and glare to minimize eye strain during extended use. Memory function remembers your preferred settings, and the sleek aluminum construction adds a contemporary touch to any desk.',
    imgUrl:
        'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=500',
    category: 'Home & Kitchen',
    price: 45.99,
    rate: 4.5,
    reviewsCount: 298,
  ),
  ProductItemModel(
    id: 9,
    name: 'Wireless Mouse',
    description:
        'Enhance your productivity with this ergonomically designed wireless mouse engineered to reduce hand and wrist strain during extended computer use. The contoured shape naturally fits your palm, promoting a comfortable hand position that minimizes fatigue. High-precision optical sensor with adjustable DPI settings (800/1200/1600) ensures smooth, accurate cursor control on virtually any surface. Reliable 2.4GHz wireless connection provides lag-free performance up to 33 feet away with the included nano USB receiver. Three programmable buttons let you customize shortcuts for your most-used functions. Whisper-quiet clicks will not disturb others in quiet environments. Energy-efficient design delivers up to 18 months of battery life from a single AA battery, with auto-sleep mode to conserve power.',
    imgUrl:
        'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=500',
    category: 'Electronics',
    price: 24.99,
    rate: 4.1,
    reviewsCount: 174,
    colors: [Colors.black, Colors.white, Colors.grey],
  ),
  ProductItemModel(
    id: 10,
    name: 'Travel Mug',
    description:
        'Take your favorite beverages anywhere with this premium insulated travel mug featuring double-wall vacuum insulation technology that keeps drinks hot for up to 6 hours or cold for up to 12 hours. Constructed from durable 18/8 food-grade stainless steel that will not retain flavors or odors, this 16-ounce mug is perfect for coffee, tea, water, or smoothies on the go. The leak-proof lid with slide closure prevents spills in your bag, while the ergonomic design fits most car cup holders. Wide mouth opening makes it easy to fill, drink from, and clean. BPA-free, dishwasher-safe, and built to last through years of daily use. Sweat-proof exterior stays dry to the touch. Eco-friendly alternative to disposable cups that helps reduce waste while saving you money.',
    imgUrl:
        'https://images.unsplash.com/photo-1534349762230-e0cadf78f5da?w=500',
    category: 'Home & Kitchen',
    price: 19.99,
    rate: 4.6,
    reviewsCount: 387,
    isFavorite: true,
  ),
];
