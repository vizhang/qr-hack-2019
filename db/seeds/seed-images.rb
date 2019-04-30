a = Item.find_by(name: "Cheese Menagerie")
if not a.image.attached?
  a.image.attach(io: File.open('./images/cheese.jpeg'), filename: 'cheese.jpeg')
end

a = Item.find_by(name: "Roasted Chicken")
if not a.image.attached?
  a.image.attach(io: File.open('./images/roast-chicken.jpg'), filename: 'roast-chicken.jpg')
end

a = Item.find_by(name: "Chicken Risotto")
if not a.image.attached?
  a.image.attach(io: File.open('./images/risotto.jpg'), filename: 'risotto.jpg')
end

a = Item.find_by(name: "Niçoise Salad")
if not a.image.attached?
  a.image.attach(io: File.open('./images/salad.jpg'), filename: 'salad.jpg')
end

a = Item.find_by(name: "Crème brûlée")
if not a.image.attached?
  a.image.attach(io: File.open('./images/creme-brulee.jpg'), filename: 'creme-brulee.jpg')
end

a = Item.find_by(name: "Aperol Spritz")
if not a.image.attached?
  a.image.attach(io: File.open('./images/aperol.jpg'), filename: 'aperol.jpg')
end

a = Item.find_by(name: "Italian 75")
if not a.image.attached?
  a.image.attach(io: File.open('./images/french75.jpg'), filename: 'french75.jpg')
end

s = Store.find_by(name: "Twins Table")
s.update(description: "A cozy dinner party. We serve one menu each night- a tasting with many courses, wines, and cocktails. Friends only. (´• ω •`)ﾉ")
if not s.cover_photo.attached?
  s.cover_photo.attach(io: File.open('./images/table.jpg'), filename: 'table.jpg')
end
