class Restaurant {
  final String name;
  final String location;
  final String distance;
  final String category;
  final String cuisine;
  final String imageUrl;

  const Restaurant({
    required this.name,
    required this.location,
    required this.distance,
    required this.category,
    required this.cuisine,
    required this.imageUrl,
  });
}

class ResData {
  static const List<Restaurant> restaurants = [
    Restaurant(
      name: 'FLAME',
      location: 'KEMPINSKI AL OTHMAN HOTEL',
      distance: '8.05 km',
      category: '\$\$',
      cuisine: 'Latin American',
      imageUrl:
          'https://www.kempinski.com/var/site/storage/images/6/3/4/0/500436-1-eng-GB/cf4f9bfeeb62-74578938_4K.jpg',
    ),
    Restaurant(
      name: 'EVOO',
      location: 'ALKHOBAR',
      distance: '12.60 km',
      category: '\$\$',
      cuisine: 'International',
      imageUrl: 'https://ucarecdn.com/3f80451b-2fbc-415f-b667-724069de8385/-/scale_crop/870x500/',
    ),
    Restaurant(
      name: 'CROWD',
      location: 'ALKHOBAR Pavilion, King Faisal road',
      distance: '12.65 km',
      category: '\$\$',
      cuisine: 'International',
      imageUrl: 'https://ucarecdn.com/113e39bc-25e4-4c7f-9151-9278d143d1ce/-/scale_crop/870x500/',
    ),
    Restaurant(
      name: 'SIKKA 22',
      location: 'KHOBAR,PRINCE TURKI STREET',
      distance: '14.10 km',
      category: '\$\$',
      cuisine: 'International',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNjgbuw7SLnEFcRKeoyZqOQ-a4R5GfG-mIxaq2W=s1360-w1360-h1020',
    ),
    Restaurant(
      name: 'Bellevento ',
      location: 'KHOBAR, FAHAD St',
      distance: '17.10 km',
      category: '\$\$',
      cuisine: 'Italian',
      imageUrl: 'https://ucarecdn.com/098aaa11-a485-4f71-95a4-6385046969f7/-/scale_crop/870x500/',
    ),
  ];

  static List<Restaurant> reservation = [];
}
