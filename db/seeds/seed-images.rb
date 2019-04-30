a = Item.find_by(name: "Cheese Menagerie")
a.image.attach(io: File.open('./images/cheese.jpg'), filename: 'cheese.jpg')

a = Item.find_by(name: "Roasted Chicken")
a.image.attach(io: File.open('./images/roast-chicken.jpg'), filename: 'roast-chicken.jpg')

a = Item.find_by(name: "Chicken Risotto")
a.image.attach(io: File.open('./images/risotto.jpg'), filename: 'risotto.jpg')

a = Item.find_by(name: "Niçoise Salad")
a.image.attach(io: File.open('./images/salad.jpg'), filename: 'salad.jpg')

a = Item.find_by(name: "Crème brûlée")
a.image.attach(io: File.open('./images/creme-brulee.jpg'), filename: 'creme-brulee.jpg')

a = Item.find_by(name: "Aperol Spritz")
a.image.attach(io: File.open('./images/aperol.jpg'), filename: 'aperol.jpg')

a = Item.find_by(name: "Italian 75")
a.image.attach(io: File.open('./images/french75.jpg'), filename: 'french75.jpg')

s = Store.find_by(name: "Twins Table")
s.update(description: "A cozy dinner party. We serve one menu each night- a tasting with many courses, wines, and cocktails. Friends only. (´• ω •`)ﾉ")
s.cover_photo.attach(io: File.open('./images/table.jpg'), filename: 'table.jpg')
