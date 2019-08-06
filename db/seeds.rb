destinations = Destination.create([
  { name: 'London', country: 'UK', image: 'https://cdn.londonandpartners.com/assets/73295-640x360-london-skyline-ns.jpg'},
  { name: 'Paris', country: 'France', image: 'https://www.fodors.com/wp-content/uploads/2018/10/9-The-Louvre-724x483.jpg' },
  { name: 'New York', country: 'USA', image: 'https://images.markets.businessinsider.com/image/5cbf3025b14bf41de325384a-2190/gettyimages-1059614218.jpg' }
])

Category.create([
  { title: 'Walking', destination_id: 1 },
  { title: 'Museums', destination_id: 1 },
  { title: 'Walking', destination_id: 2 },
  { title: 'Shopping', destination_id: 2 },
])
