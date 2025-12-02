class ProductItemModel {
  final int id;
  final String name;
  final String description;
  final String imgUrl;
  final String category;
  final double price;
  final double rate;
  final bool isFavorite;

  ProductItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.category,
    required this.price,
    required this.rate,
    this.isFavorite = false,
  });
}

// Dummy list of products [For testing]
final List<ProductItemModel> dummyProducts = [
  ProductItemModel(
    id: 1,
    name: 'Wireless Headphones',
    description:
        'Premium noise-cancelling wireless headphones with 30-hour battery life and superior sound quality.',
    imgUrl:
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
    category: 'Electronics',
    price: 149.99,
    rate: 4.5,
  ),
  ProductItemModel(
    id: 2,
    name: 'Smart Watch',
    description:
        'Advanced fitness tracking smartwatch with heart rate monitor, GPS, and water resistance.',
    imgUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
    category: 'Electronics',
    price: 299.99,
    rate: 4.7,
    isFavorite: true,
  ),
  ProductItemModel(
    id: 3,
    name: 'Leather Backpack',
    description:
        'Stylish genuine leather backpack with laptop compartment and multiple pockets.',
    imgUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500',
    category: 'Fashion',
    price: 89.99,
    rate: 4.3,
  ),
  ProductItemModel(
    id: 4,
    name: 'Running Shoes',
    description:
        'Lightweight running shoes with cushioned sole and breathable mesh upper.',
    imgUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
    category: 'Sports',
    price: 79.99,
    rate: 4.6,
    isFavorite: true,
  ),
  ProductItemModel(
    id: 5,
    name: 'Coffee Maker',
    description:
        'Programmable coffee maker with thermal carafe and auto-brew feature.',
    imgUrl:
        'https://images.unsplash.com/photo-1517668808822-9ebb02f2a0e6?w=500',
    category: 'Home & Kitchen',
    price: 59.99,
    rate: 4.4,
  ),
  ProductItemModel(
    id: 6,
    name: 'Sunglasses',
    description:
        'UV protection polarized sunglasses with designer frames and premium lenses.',
    imgUrl:
        'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=500',
    category: 'Accessories',
    price: 129.99,
    rate: 4.2,
  ),
  ProductItemModel(
    id: 7,
    name: 'Yoga Mat',
    description:
        'Extra thick eco-friendly yoga mat with non-slip surface and carrying strap.',
    imgUrl:
        'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=500',
    category: 'Sports',
    price: 34.99,
    rate: 4.8,
    isFavorite: true,
  ),
  ProductItemModel(
    id: 8,
    name: 'Desk Lamp',
    description:
        'LED desk lamp with adjustable brightness, color temperature, and USB charging port.',
    imgUrl:
        'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=500',
    category: 'Home & Kitchen',
    price: 45.99,
    rate: 4.5,
  ),
  ProductItemModel(
    id: 9,
    name: 'Wireless Mouse',
    description:
        'Ergonomic wireless mouse with precision tracking and long battery life.',
    imgUrl:
        'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=500',
    category: 'Electronics',
    price: 24.99,
    rate: 4.1,
  ),
  ProductItemModel(
    id: 10,
    name: 'Travel Mug',
    description:
        'Insulated stainless steel travel mug that keeps drinks hot or cold for hours.',
    imgUrl:
        'https://images.unsplash.com/photo-1534349762230-e0cadf78f5da?w=500',
    category: 'Home & Kitchen',
    price: 19.99,
    rate: 4.6,
    isFavorite: true,
  ),
];
