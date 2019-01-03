# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create!([
  { title: 'Mercedes Benz GLE Class', price: 55700 },
  { title: 'Kia Sorento', price: 25100 },
  { title: 'Honda Odyssey', price: 29990 },
  { title: 'Ford Mustang', price: 26120 }
])

images = Image.create!([
  {
    src: 'images/2018_honda_odyssey/2018_honda_odyssey_reactfront.jpg',
    product_id: products[2].id
  },
  {
    src: 'images/2018_honda_odyssey/2018_honda_odyssey_frontview.jpg',
    product_id: products[2].id
  },
  {
    src: 'images/2018_honda_odyssey/2018_honda_odyssey_sideview.jpg',
    product_id: products[2].id
  },
  {
    src: 'images/2018_honda_odyssey/2018_honda_odyssey_engine.jpg',
    product_id: products[2].id
  },
  {
    src: 'images/2018_kia_sorento/2018_kia_sorento_reactfront.jpg',
    product_id: products[1].id
  },
  {
    src: 'images/2018_kia_sorento/2018_kia_sorento_frontview.jpg',
    product_id: products[1].id
  },
  {
    src: 'images/2018_kia_sorento/2018_kia_sorento_sideview.jpg',
    product_id: products[1].id
  },
  {
    src: 'images/2018_kia_sorento/2018_kia_sorento_engine.jpg',
    product_id: products[1].id
  },
  {
    src: 'images/2018_mercedes_benz_gle_class/2018_mercedes_benz_gle_class_reactfront.jpg',
    product_id: products[0].id
  },
  {
    src: 'images/2018_mercedes_benz_gle_class/2018_mercedes_benz_gle_class_frontview.jpg',
    product_id: products[0].id
  },
  {
    src: 'images/2018_mercedes_benz_gle_class/2018_mercedes_benz_gle_class_sideview.jpg',
    product_id: products[0].id
  },
  {
    src: 'images/2018_mercedes_benz_gle_class/2018_mercedes_benz_gle_class_engine.jpg',
    product_id: products[0].id
  },
  {
    src: 'images/2019_ford_mustang/2019_ford_mustang_reactfront.jpg',
    product_id: products[3].id
  },
  {
    src: 'images/2019_ford_mustang/2019_ford_mustang_frontview.jpg',
    product_id: products[3].id
  },
  {
    src: 'images/2019_ford_mustang/2019_ford_mustang_sideview.jpg',
    product_id: products[3].id
  },
  {
    src: '/images/2019_ford_mustang/2019_ford_mustang_engine.jpg',
    # src: image_path,
    product_id: products[3].id
  }
])
