# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
stark = House.create(name:"Stark", castle:"Winterfell", banner_url:"https://s-media-cache-ak0.pinimg.com/564x/4d/9f/65/4d9f6582aadc75bbfc9a22a4d728d1b1.jpg" )
lannister = House.create(name:"Lannister", castle:"Casterly Rock", banner_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/0/0b/House-Lannister-heraldry.jpg/revision/latest?cb=20140402110342" )
stark = House.create(name:"Baratheon", castle:"Storm's End", banner_url:"http://vignette2.wikia.nocookie.net/thehungergames/images/9/91/Baratheon_sigil_by_totalxeclipse-d5ucj7n.jpg/revision/latest?cb=20140723203307" )
stark = House.create(name:"Tyrell", castle:"Highgaren", banner_url:"http://www.songoficeandfiregroup.com/wp-content/uploads/2014/04/house_tyrell_by_liquidsouldesign-d467jau.jpg" )


ned = Character.create(name:"Ned Stark", title:"Lord", img_url:"http://i.ndtvimg.com/i/2015-09/ned-stark_640x480_71443426196.jpg", house_id:2)
jon = Character.create(name:"Jon Snow", title:"Steward of the Nights Watch", img_url:"https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/15/09/jon-snow.jpg", house_id:2)

jaime = Character.create(name:"Jaime Lannister", title:"Kingslayer", img_url:"http://img1.looper.com/img/gallery/why-game-of-thrones-jaime-lannister-is-more-important-than-we-realized/intro.jpg", house_id:3)
cersei = Character.create(name:"Cersei Lannister", title:"Queen", img_url:"http://vignette4.wikia.nocookie.net/gameofthrones/images/c/c6/Cersei-lannister-lena-headey-helen-sloan.jpeg/revision/20120424220038", house_id:3)

robert = Character.create(name:"Robert Baratheon", title:"King", img_url:"http://vignette1.wikia.nocookie.net/hieloyfuego/images/e/ee/Robert_Baratheon_HBO.JPG/revision/latest?cb=20120124224134", house_id:4)
renly = Character.create(name:"Renly Baratheon", title:"Lord", img_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/d/d2/Renly.jpg/revision/latest?cb=20110410235208", house_id:4)

margery = Character.create(name:"Margery Tyrell", title:"Lady", img_url:"https://s-media-cache-ak0.pinimg.com/originals/17/37/16/173716c7a1b515d2626812faf148219f.jpg", house_id:5)
loras = Character.create(name:"Loras Tyrell", title:"Sir", img_url:"https://www.google.com/search?q=renly+baratheon&safe=off&espv=2&biw=1431&bih=747&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjqwO23jNjPAhUCph4KHdQ9Dl4Q_AUIBigB#safe=off&tbm=isch&q=loras+tyrell&imgrc=POLATIi0x_-y5M%3A", house_id:5)
