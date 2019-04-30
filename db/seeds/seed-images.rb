i = Item.find_by(name: "Italian 75")
i.image.attach(io: File.open('./images/french75.jpg'), filename: 'french75.jpg')
