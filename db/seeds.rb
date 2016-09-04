ProductOption.destroy_all
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

mf = CushionOption.create(name: "Memory Foam")
fw = CushionOption.create(name: "Fiber-wrapped foam")
df = CushionOption.create(name: "Down-filled")

li = CoveringOption.create(name: "Linen")
wo = CoveringOption.create(name: "Wool")
le = CoveringOption.create(name: "Leather")
si = CoveringOption.create(name: "Silk")

# Radiator Cabinet
rc.product_options.create(option: ro, cost:  6500)
rc.product_options.create(option: ch, cost:  5000)
rc.product_options.create(option: wa, cost: 15000)
rc.product_options.create(option: cm, cost:  8000)

# Bookcase
bc.product_options.create(option: ro, cost: 20000)
bc.product_options.create(option: ch, cost: 13000)
bc.product_options.create(option: wa, cost: 30000)

# Wardrobe
wd.product_options.create(option: ro, cost: 30000)
wd.product_options.create(option: ch, cost: 26000)

# Dressing Table
dt.product_options.create(option: ro, cost: 23000)
dt.product_options.create(option: ch, cost: 15000)
dt.product_options.create(option: cm, cost: 26000)

# Extended Dining Table
et.product_options.create(option: ro, cost: 37000)
et.product_options.create(option: ch, cost: 30000)

# Chaise Longue
cl.product_options.create(option: mf, cost: 15000)
cl.product_options.create(option: fw, cost:  3000)
cl.product_options.create(option: li, cost:  5000)
cl.product_options.create(option: wo, cost: 15000)
cl.product_options.create(option: le, cost: 20000)

# Armchair
ac.product_options.create(option: ro, cost:  5000)
ac.product_options.create(option: ch, cost:  3500)
ac.product_options.create(option: wa, cost:  9000)
ac.product_options.create(option: cm, cost:  5500)

ac.product_options.create(option: mf, cost:  6000)
ac.product_options.create(option: df, cost:  1500)
ac.product_options.create(option: li, cost:  2000)
ac.product_options.create(option: wo, cost:  6000)
ac.product_options.create(option: si, cost: 12000)


User.find_or_create_by(email: "Fred")
User.find_or_create_by(email: "Sally")
