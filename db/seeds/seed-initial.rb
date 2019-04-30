# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Nuke the databases
Item.destroy_all
MenuCategory.destroy_all
Menu.destroy_all
Store.destroy_all
Business.destroy_all

# Setup Databases
Business.create(name: 'VW Studios')
vwstudios = Business.find_by(name: 'VW Studios')
vwstudios.stores.create(name: 'Twins Table', instagram_handle: 'twins_table_', description: 'A modern dinner Chinese dinner party. We serve one menu each night- a tasting menu with many courses, wines, and cocktails. Invitation only. (´• ω •`)ﾉ')

twinstable = Store.find_by(name: 'Twins Table')
twinstable.menus.create(name: 'April 28, 20919 with Friends')

m = Menu.find_by(name: 'April 28, 20919 with Friends')
m.menu_categories.create([{
  name: 'Eats',
},
{
  name: 'Drinks',
}])

eats = MenuCategory.find_by(name: 'Eats')
drinks = MenuCategory.find_by(name: 'Drinks')

eats.items.create([{
  name: 'Cheese Menagerie',
  description: 'Kaasaggio (originale), Gouda (double cream, Spring Koe), and Manchego (Aged 6-months, El Trigal).'
},
{
  name: 'Roasted Chicken',
  description: 'Buttermilk base. Oven roasted deliciousness.'
},
{
  name: 'Chicken Risotto',
  description: 'Made from homemade chicken stock and fall off the bone tender chicken.'
},
{
  name: 'Niçoise Salad',
  description: 'We abandoned the rules and bring you a salad unlike any other.'
},
{
  name: 'Crème brûlée',
  description: 'Five simple ingredients – cream, vanilla, salt, eggs and sugar.'
}])

drinks.items.create([{
  name: 'Aperol Spritz',
  description: 'Sunset in cocktail form.'
},
{
  name: 'Italian 75',
  description: 'The Italian cousin of the French 75.'
}])

p "Created #{Business.count} businesses"
p "Created #{Store.count} stores"
p "Created #{Menu.count} menus"
p "Created #{MenuCategory.count} menu categories"
p "Created #{Item.count} items"
