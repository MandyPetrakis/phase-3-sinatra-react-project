puts "🌱 Seeding spices..."

Owner.destroy_all
Item.destroy_all

norman = Owner.create(name: "Norman")
fred = Owner.create(name: "Fred")
lola = Owner.create(name: "Lola")


norman.items << Item.new(room: "Living Room", category: "Furniture", item: "Green Sofa", quantity: 1)
norman.items << Item.new(room: "Living Room", category: "Furniture", item: "Arch Lamp", quantity: 1)
norman.items << Item.new(room: "Bedroom", category: "Furniture", item: "Side Table", quantity: 1)
norman.items << Item.new(room: "Garage", category: "Sports Equipment", item: "Squat Rack", quantity: 1)


fred.items << Item.new(room: "Kitchen", category: "Appliance", item: "Coffee Maker", quantity: 1)
fred.items << Item.new(room: "Kitchen", category: "Appliance", item: "Juicer", quantity: 1)
fred.items << Item.new(room: "Kitchen", category: "Furniture", item: "Dining Table", quantity: 1)
fred.items << Item.new(room: "Patio", category: "Furniture", item: "Lounge Chairs", quantity: 3)
fred.items << Item.new(room: "Bedroom", category: "Furniture", item: "Dresser", quantity: 1)
fred.items << Item.new(room: "Living Room", category: "Decore", item: "Wall Art", quantity: 3)


lola.items << Item.new(room: "Garage", category: "Power Tools", item: "Drill", quantity: 1)
lola.items << Item.new(room: "Garage", category: "Sports Equipment", item: "Paddle Board", quantity: 1)
lola.items << Item.new(room: "Living Room", category: "Furniture", item: "Reclining Chair", quantity: 1)
lola.items << Item.new(room: "Living Room", category: "Decore", item: "House Plants", quantity: 3)

puts "✅ Done seeding!"
