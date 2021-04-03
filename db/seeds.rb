# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
StreamingService.create(name: 'Netflix', monthly_price: '$8.99-$17.99', original_titles: '1,200', image_link: "https://logos-world.net/wp-content/uploads/2020/04/Netflix-Logo-2014-present.jpg")
StreamingService.create(name: 'Amazon Prime Video', monthly_price: '$8.99', original_titles: '200', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Amazon-Prime-Video-Logo-2017-present.jpg")
StreamingService.create(name: 'Disney Plus', monthly_price: '$7.99-$13.99', original_titles: '36', image_link: "https://logos-world.net/wp-content/uploads/2021/02/Disney-Emblem.jpg")
StreamingService.create(name: 'Hulu', monthly_price: '$7.99-$11.99', original_titles: '70', image_link: "https://logos-world.net/wp-content/uploads/2020/11/Hulu-Logo-2018-present-700x394.jpg")
StreamingService.create(name: 'HBO Max', monthly_price: '$14.99', original_titles: '500', image_link: "https://ewscripps.brightspotcdn.com/dims4/default/c438f06/2147483647/strip/true/crop/1280x720+1+0/resize/1280x720!/quality/90/?url=https%3A%2F%2Fewscripps.brightspotcdn.com%2F27%2Fce%2Fc75abb074fe5b77dd4183135742d%2Fhbo-max.jpg")
StreamingService.create(name: 'Peacock', monthly_price: '$5.99-$9.99', original_titles: '11', image_link: "https://cdn-0.macobserver.com/wp-content/uploads/2020/01/Peacock-Logo-1024x538.jpg?ezimgfmt=ng:webp/ngcb11")
StreamingService.create(name: 'Apple TV Plus', monthly_price: '$4.99', original_titles: '36', image_link: "https://www.dnsflex.com/wp-content/uploads/2018/11/ab766765150706f02b4f2b145c197759.png")
StreamingService.create(name: 'Discovery Plus', monthly_price: '$4.99-$6.99', original_titles: '50', image_link: "https://cdn.videotapenews.com/wp-content/uploads/2020/12/Discovery-Plus-logo.jpg")


TopTitle.create(title: "The Queen's Gambit", streaming_service_id: 1)
TopTitle.create(title: "The Witcher", streaming_service_id: 1)
TopTitle.create(title: "Stranger Things", streaming_service_id: 1)
TopTitle.create(title: "Bridgerton", streaming_service_id: 1)
TopTitle.create(title: "The Crown", streaming_service_id: 1)

TopTitle.create(title: "The Man in the High Castle", streaming_service_id: 2)
TopTitle.create(title: "The Expanse", streaming_service_id: 2)
TopTitle.create(title: "The Marvelous Mrs. Maisel", streaming_service_id: 2)
TopTitle.create(title: "The Grand Tour", streaming_service_id: 2)
TopTitle.create(title: "Tom Clancy's Jack Ryan", streaming_service_id: 2)

TopTitle.create(title: "The Falcon and the Winter Soldier", streaming_service_id: 3)
TopTitle.create(title: "WandaVision", streaming_service_id: 3)
TopTitle.create(title: "The Mandalorian", streaming_service_id: 3)
TopTitle.create(title: "The Mighty Ducks: Game Changers", streaming_service_id: 3)
TopTitle.create(title: "The Falcon and the Winter Soldier", streaming_service_id: 3)
TopTitle.create(title: "Gravity Falls", streaming_service_id: 3)

TopTitle.create(title: "The Handmaid's Tale", streaming_service_id:4)
TopTitle.create(title: "It's Always Sunny in Philadelphia", streaming_service_id:4)
TopTitle.create(title: "The Handmaid's Tale", streaming_service_id:4)
TopTitle.create(title: "Atlanta", streaming_service_id:4)
TopTitle.create(title: "Fargo", streaming_service_id:4)

TopTitle.create(title: "Game of Thrones", streaming_service_id:5)
TopTitle.create(title: "Westworld", streaming_service_id:5)
TopTitle.create(title: "Chernobyl", streaming_service_id:5)
TopTitle.create(title: "Last Week Tonight with John Oliver", streaming_service_id:5)
TopTitle.create(title: "Curb Your Enthusiasm", streaming_service_id:5)

TopTitle.create(title: "Yellowstone", streaming_service_id:6)
TopTitle.create(title: "Organized Crime", streaming_service_id:6)
TopTitle.create(title: "Brave New World", streaming_service_id:6)
TopTitle.create(title: "Project Blue Book", streaming_service_id:6)
TopTitle.create(title: "This Old House", streaming_service_id:6)

TopTitle.create(title: "Little America", streaming_service_id:7)
TopTitle.create(title: "Long Way Up", streaming_service_id:7)
TopTitle.create(title: "The Morning Show", streaming_service_id:7)
TopTitle.create(title: "Truth Be Told", streaming_service_id:7)
TopTitle.create(title: "Dickinson", streaming_service_id:7)

TopTitle.create(title: "Mysterious Planet", streaming_service_id:8)
TopTitle.create(title: "Diners, Drive-Ins, and Dives", streaming_service_id:8)
TopTitle.create(title: "Good Eats", streaming_service_id:8)
TopTitle.create(title: "Savage Builds", streaming_service_id:8)
TopTitle.create(title: "Planet Earth 2", streaming_service_id:8)









