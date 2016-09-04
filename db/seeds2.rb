# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ItemOption.destroy_all

WoodOption.destroy_all
FoamOption.destroy_all
CoveringOption.destroy_all

Item.destroy_all
Product.destroy_all
Option.destroy_all

rc = Product.create(name: "Radiator Cabinet", cost:  25000)
bc = Product.create(name: "Bookcase",         cost:  35000)
wd = Product.create(name: "Wardrobe",         cost: 130000)
dt = Product.create(name: "Dressing Table",   cost:  85000)
et = Product.create(name: "Extending Dining Table", cost: 12000)
cl = Product.create(name: "Chaise Longue",    cost:  80000)
ac = Product.create(name: "Armchair",         cost:  65000)

ro = WoodOption.create(name: "Red Oak")
ch = WoodOption.create(name: "Cherry")
cm = WoodOption.create(name: "Curly Maple")
wa = WoodOption.create(name: "Walnut")

mf = FoamOption.create(name: "Memory Foam")
fw = FoamOption.create(name: "Fiber-wrapped foam")
df = FoamOption.create(name: "Down-filled")

li = CoveringOption.create(name: "Linen")
wo = CoveringOption.create(name: "Wool")
le = CoveringOption.create(name: "Leather")
si = CoveringOption.create(name: "Silk")

# Radiator Cabinet
rc.type_options.create(option: ro, cost:  6500)
rc.type_options.create(option: ch, cost:  5000)
rc.type_options.create(option: wa, cost: 15000)
rc.type_options.create(option: cm, cost:  8000)

# Bookcase
bc.type_options.create(option: ro, cost: 20000)
bc.type_options.create(option: ch, cost: 13000)
bc.type_options.create(option: wa, cost: 30000)

# Wardrobe
wd.type_options.create(option: ro, cost: 30000)
wd.type_options.create(option: ch, cost: 26000)

# Dressing Table
dt.type_options.create(option: ro, cost: 23000)
dt.type_options.create(option: ch, cost: 15000)
dt.type_options.create(option: cm, cost: 26000)

# Extended Dining Table
et.type_options.create(option: ro, cost: 37000)
et.type_options.create(option: ch, cost: 30000)

# Chaise Longue
cl.type_options.create(option: mf, cost: 15000)
cl.type_options.create(option: fw, cost:  3000)
cl.type_options.create(option: li, cost:  5000)
cl.type_options.create(option: wo, cost: 15000)
cl.type_options.create(option: le, cost: 20000)

# Armchair
ac.type_options.create(option: ro, cost:  5000)
ac.type_options.create(option: ch, cost:  3500)
ac.type_options.create(option: wa, cost:  9000)
ac.type_options.create(option: cm, cost:  5500)

ac.type_options.create(option: mf, cost:  6000)
ac.type_options.create(option: df, cost:  1500)
ac.type_options.create(option: li, cost:  2000)
ac.type_options.create(option: wo, cost:  6000)
ac.type_options.create(option: si, cost: 12000)

SELECT t.name, o.name, tos.cost+t.cost FROM types as t INNER JOIN type_options AS tos ON t.id=tos.type_id INNER JOIN options AS o ON o.id=tos.option_id;
