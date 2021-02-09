users = User.create([
  { name: 'Joseph Burke', email: 'joseph_burke@outlook.com' },
  { name: 'Deborah Burke', email: 'deborah_burke@outlook.co.uk' },
  { name: 'Martin Burke', email: 'martin@hotmail.com' },
  { name: 'Ellen Burke', email: 'ellen_burke@outlook.ac' },
  { name: 'Daniel Burke', email: 'danny_b@outlook.ca' },
  { name: 'Katherine Burke', email: 'katie@gmail.com' }
])

houses = [
  { attributes: {
      location: 'New Street, Donisthorpe, Swadlincote, DE12',
      description: 'A reasonably priced terraced house, perfect for first-time buyers', 
      bedrooms: 2, 
      bathrooms: 1 },
    image: 'http://media.rightmove.co.uk/166k/165374/77465148/165374_df79772e-0dc6-41d2-b4b5-a589581c7915_EAF_61476_IMG_01_0000.jpg'
  },
  { attributes: {
      location: 'Moor Lane, Coleorton, Leicestershire, LE67',
      description: 'A cottage brimming with character features, beautiful private established gardens, a 3.75 acre paddock and stunning views over the open countryside. ', 
      bedrooms: 4,
      bathrooms: 2 },
    image: 'http://media.rightmove.co.uk/166k/165374/88657942/165374_f8bd7269-43d8-42ff-937e-86764a584d14_EAF_61407_IMG_01_0000.jpg'
  },
  { attributes: {
      location: 'Netherhall Drive, Quorn, Leicester, LE12',
      description: 'A stunning six bedroom house built by David Wilson Homes, which offers flexible accommodation over three floors.', 
      bedrooms: 6, 
      bathrooms: 4 },
    image: 'http://media.rightmove.co.uk/166k/165374/77466201/165374_12bf2ccf-80c1-4679-9d8f-11a6b48cb706_EAF_61323_IMG_01_0000.jpg'
  }
]

houses.each do |obj|
  house = House.create(obj[:attributes]);
  house.picture.attach io: URI.open(obj[:image]), filename: obj[:image], content_type: "image/jpg"
end

