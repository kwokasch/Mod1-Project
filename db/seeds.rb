MoodEvent.destroy_all
Mood.destroy_all
Event.destroy_all


pumped = Mood.create(name: "PUMPED!")
active = Mood.create(name: "Active")
social  = Mood.create(name: "* Ready to mingle *")
chill = Mood.create(name: "Let's be low-key")
introverted = Mood.create(name: "In my peace")
stressed = Mood.create(name: "UGH")

fizzfest = Event.create({
    name: "Fizz Fight - A Hard Seltzer Festival",
    description: "Enjoy an afternoon sampling a variety of hard seltzers from companies across the country!",
    date: "Saturday, September 14, 2019",
    time: "11:30AM - 7:30PM",
    location: "EXDO, 1399 35th Street, Denver, CO 80205"
})

dbqueen = Event.create({
    name: "David Bowie X Queen",
    description: "A Special DJ tribute to the greatest of our time. Get ready for a dance party like no other!",
    date: "Friday, September 13, 2019",
    time: "7:00PM - 11:59PM",
    location: "The Monkey Barrel, 4401 Tejon Street, Denver, CO 80211"
})


fitfest = Event.create({
    name: "Mile High Fitness Festival",
    description: "An amazing line-up of fitness workouts will include Palango! Fitness, HIIT,
    strength training, yoga, Reiki, Barre, kickboxing and more.",
    date: "Sunday, September 15, 2019",
    time: "8:30AM - 3:30PM",
    location: "La Rumba, 99 W 9th Ave, Denver, CO 80204"
})

yogaotr = Event.create({
    name: "Yoga On The Rooftop 2019",
    description: "Mind. Body. Mimosas",
    date: "Saturday, September 14, 2019",
    time: "10:00AM - 11:00AM",
    location: "Ale House, 2501 16th Street, Denver, CO 80211"
})

tastetalk = Event.create({
    name: "Taste & Talk",
    description: "Join their resident wine expert and storyteller for a family-style wine tasting experience.",
    date: "Friday, September 20, 2019",
    time: "6:00PM - 8:00PM",
    location: "Blanchard Family Wines, 1855 Blake St, Suite 120 (in the alleyway), Denver, CO 80202"
})

nineties = Event.create({
    name: "90's Party",
    description: "Join them on the patio for drinks, charcuterie, 
    and desserts while DJ Alex Cruze & Morgan Page spin in the alley.",
    date: "Saturday, September 28, 2019",
    time: "8:00PM - 11:59PM",
    location: "Blanchard Family Wines, 1855 Blake St, Suite 100, Denver, CO 80202"
})


paintwine = Event.create({
    name: "Sipping n' Painting",
    description: "Paint Wine Denver Magical Evening",
    date: "Monday, September 16, 2019",
    time: "6:30PM - 8:30PM",
    location: "6300 E Hampden Ave, Denver, CO 80222"
})

tokestroke = Event.create({
    name: "Creatively Cannabis: Tokes and Brush Strokes",
    description: "Ready to partake and paint? 
    This event is for all skill level artists and tokers. 
    Step-by-step instruction ensures everyone loves their art!",
    date: "Sunday, September 15, 2019",
    time: "3:00PM - 5:30PM",
    location: "The Coffee Joint, 1130 Yuma St, Denver, CO 80204"
})

bookclub = Event.create({
    name: "Book Club Happy Hour",
    description: "Join Tattered Cover as we discuss recommendations for your next book club read 
    and our best picks for holiday gifting. Light refreshments and wine will be served.",
    date: "Friday, September 20, 2019",
    time: "7:00PM - 8:30PM",
    location: "Tattered Cover Book Store, 2526 East Colfax Avenue, Denver, CO 80206"
})

chocolate = Event.create({
    name: "Chocolate Tasting and Truffle Workshop",
    description: "At this hands-on chocolate workshop, 
    you’ll taste more than 10 different single-origin and 
    bean-to-bar specialty chocolates from around the world, 
    and will learn how chocolate is grown and produced, 
    what chocolate percentages really mean, and 
    how to pair chocolate with craft beer (all included, of course!).",
    date: "Sunday, September 15, 2019",
    time: "1:00PM - 4:00PM",
    location: "Enterprise Coworking Kitchen, 3000 Lawrence Street, Denver, CO 80205"
})

p1 = MoodEvent.create({
    mood: pumped,
    event: fizzfest
})

p2 = MoodEvent.create({
    mood: pumped,
    event: dbqueen
})


a1 = MoodEvent.create({
    mood: active,
    event: fitfest
})

a2 = MoodEvent.create({
    mood: active,
    event: yogaotr
})


m1 = MoodEvent.create({
    mood: social,
    event: tastetalk
})

m2 = MoodEvent.create({
    mood: social,
    event: nineties
})



c1 = MoodEvent.create({
    mood: chill,
    event: paintwine
})



c2 = MoodEvent.create({
    mood: chill,
    event: yogaotr
})


i1 = MoodEvent.create({
    mood: introverted,
    event: bookclub
})


i2 = MoodEvent.create({
    mood: introverted,
    event: tokestroke
})



s1 = MoodEvent.create({
    mood: stressed,
    event: chocolate
})

s2 = MoodEvent.create({
    mood: stressed,
    event: tokestroke
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