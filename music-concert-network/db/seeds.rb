Concert.create(
  artist: "Band of Horses",
  venue: "O2 Shepherd's Bush Empire",
  city: "London, UK",
  date: Date.parse("2016-07-05"),
  price: 25.75,
  description: "Doors open: 19:00"
)

Concert.create(
  artist: "Coldplay",
  venue: "Wembley Stadium",
  city: "London, UK",
  date: Date.parse("2016-06-15"),
  price: 71.5,
  description: "Doors open: 17:00. SJM Concerts present. COLDPLAY. Fourth and final Wembley show onsale December 11th, 10am. The Pitch Area will be split into 2 Zones and you will be allocated a Zone at a later date (No Movement between Zones)"
)

Concert.create(
  artist: "The Lumineers",
  venue: "Prospect Park Bandshell",
  city: "Brooklyn, NY, US",
  date: Date.parse("2016-08-03"),
  price: 39.5,
  description: "The Lumineers are an American folk rock band based in Denver, Colorado, who formed as early as 2005 but didn’t release their self-titled debut record until April of 2012."
)

Concert.create(
  artist: "The Enemy",
  venue: "O2 Academy Bristol",
  city: "Bristol, UK",
  date: Date.parse("2016-09-04"),
  price: 20,
  description: "Doors open: 19:00"
)

Concert.create(
  artist: "Geoff Farina",
  venue: "Costello Club",
  city: "Madrid, Spain",
  date: Date.parse("2016-05-11"),
  price: 8,
  description: "Doors open: 20:30"
)

Concert.create(
  artist: "Love of Lesbian",
  venue: "Razzmatazz 2",
  city: "Barcelona, Spain",
  date: Date.parse("2016-04-29"),
  price: 25,
  description: "LOVE OF LESBIAN regresan a los escenarios españoles después de más de un año para presentar su nuevo disco EL POETA HALLEY que se editará el próximo mes de marzo del 2016. El grupo ofrecerá 3 conciertos en la Sala Razzmatazz de Barcelona los próximos días 28, 29 y 30 de abril. Más de 2h de intenso e hipnótico espectáculo que supondrán el esperado reencuentro de la banda y su público."
)

Concert.create(
  artist: "Paul McCartney",
  venue: "Estadio Vicente Calderón",
  city: "Madrid, Spain",
  date: Date.parse("2016-06-02"),
  price: 69,
  description: "Doors open: 20:30"
)

puts "Seeding complete"
