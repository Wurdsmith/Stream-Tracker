# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
StreamingService.create(name: 'Netflix', monthly_price: '$8.99-$17.99', original_titles: '1,200', image_link: "https://logos-world.net/wp-content/uploads/2020/04/Netflix-Logo-2014-present.jpg")
StreamingService.create(name: 'Amazon Prime Video', monthly_price: '$8.99', original_titles: '200', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Amazon-Prime-Video-Logo-2017-present.jpg")
StreamingService.create(name: 'Disney Plus', monthly_price: '$7.99-$13.99', original_titles: '36', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Amazon-Prime-Video-Logo-2017-present.jpg")
StreamingService.create(name: 'Hulu', monthly_price: '$7.99-$11.99', original_titles: '70', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Amazon-Prime-Video-Logo-2017-present.jpg")
StreamingService.create(name: 'HBO Max', monthly_price: '$14.99', original_titles: '500', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Amazon-Prime-Video-Logo-2017-present.jpg")
StreamingService.create(name: 'Peacock', monthly_price: '$5.99-$9.99', original_titles: '11', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Amazon-Prime-Video-Logo-2017-present.jpg")
StreamingService.create(name: 'Apple TV Plus', monthly_price: '$4.99', original_titles: '36', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Amazon-Prime-Video-Logo-2017-present.jpg")
StreamingService.create(name: 'Discovery Plus', monthly_price: '$4.99-$6.99', original_titles: '50', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Amazon-Prime-Video-Logo-2017-present.jpg")


TopTitle.create(title: "The Queen's Gambit", streaming_service_id: 1)
TopTitle.create(title: "The Witcher", streaming_service_id: 1)
TopTitle.create(title: "Stranger Things", streaming_service_id: 1)
TopTitle.create(title: "Bridgerton", streaming_service_id: 1)


