destinations = Destination.create([
  { name: 'London', country: 'UK', image: 'https://cdn.londonandpartners.com/assets/73295-640x360-london-skyline-ns.jpg'},
  { name: 'Paris', country: 'France', image: 'https://www.fodors.com/wp-content/uploads/2018/10/9-The-Louvre-724x483.jpg' },
  { name: 'New York', country: 'USA', image: 'https://images.markets.businessinsider.com/image/5cbf3025b14bf41de325384a-2190/gettyimages-1059614218.jpg' },
  { name: 'Boston', country: 'USA', image: 'https://hoodline-assets.imgix.net/metros/boston.jpg' },
  { name: 'Montreal', country: 'Canada', image: 'https://images.dailyhive.com/20190516061432/open-closed-montreal-victoria-day-weekend.jpg' },
  { name: 'Rio de Janeiro', country: 'Brasil', image: 'https://www.pssru.ac.uk/wp-content/uploads/2019/06/DR2.jpg' }
])

Category.create([
  { title: 'Walking', destination_id: 1 },
  { title: 'Museums', destination_id: 1 },
  { title: 'Walking', destination_id: 2 },
  { title: 'Shopping', destination_id: 2 },
  { title: 'Walking', destination_id: 3 },
  { title: 'Museums', destination_id: 3 },
  { title: 'Whale Watching', destination_id: 4 },
  { title: 'Festivals', destination_id: 5 },
  { title: 'Beach', destination_id: 6 },
])
