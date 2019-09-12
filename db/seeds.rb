# MoodEvent.destroy_all
# Mood.destroy_all
# Event.destroy_all


pumped = Mood.create(name: "PUMPED!")

fizzfest = Event.create({
    name: "NAME: Fizz Fight - A Hard Seltzer Festival",
    description: "DESCRIPTION: Enjoy an afternoon sampling a variety of hard seltzers from companies across the country!",
    date: "DATE: Saturday, September 14, 2019",
    time: "TIME: 11:30AM - 7:30PM",
    location: "LOCATION: EXDO, 1399 35th Street, Denver, CO 80205"
})

dbqueen = Event.create({
    name: "NAME: David Bowie X Queen",
    description: "DESCRIPTION: A Special DJ tribute to the greatest of our time. Get ready for a dance party like no other!",
    date: "DATE: Friday, September 13, 2019",
    time: "TIME: 7:00PM - 11:59PM",
    location: "LOCATION: The Monkey Barrel, 4401 Tejon Street, Denver, CO 80211"
})

p1 = MoodEvent.create({
    mood: pumped,
    event: fizzfest
})

p2 = MoodEvent.create({
    mood: pumped,
    event: dbqueen
})





# Examples:

# customer1 = Customer.create(name: "Bob")

# chilis = Restaurant.create(name: "Chilis")

# review1 = Review.create({
#     content: "Great",
#     rating: 5,
#     customer: customer1,
#     restaurant: chilis
# })