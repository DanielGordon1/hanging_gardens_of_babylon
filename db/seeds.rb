Garden.destroy_all if Rails.env.development?
Tag.destroy_all if Rails.env.development?

epic = Garden.create!(
  name: "Epic hanging stuff garden",
  banner_url: "https://www.historicmysteries.com/wp-content/uploads/2010/05/anging-gardens-of-babylon-e1566297262106-1024x555.png"
)
little = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: epic
)

Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: epic
)

Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: little
)

tag_names = %w[prickly cornichonly porkly smelly flower cactus ugly pretty]

tag_names.each do |name|
  Tag.create!(name: name)
end
