Garden.destroy_all if Rails.env.development?


Garden.create!(
  name: "Epic hanging stuff garden",
  banner_url: "https://www.historicmysteries.com/wp-content/uploads/2010/05/anging-gardens-of-babylon-e1566297262106-1024x555.png"
)
Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)


