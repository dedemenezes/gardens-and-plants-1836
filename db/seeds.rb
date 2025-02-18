# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Garden.destroy_all if Rails.env.development?

japones = Garden.create!(
  name: "Jardin Japones",
  banner_url: "https://turismo.buenosaires.gob.ar/sites/turismo/files/jardinjapones1500x610-pano.jpg"
)

botanical = Garden.create!(
  name: "Gothenburg Botanical Garden",
  banner_url: "https://www.botaniska.se/contentassets/419ccf4cf2254bee8ab71d53e98f6b21/kulturtrc3a4dgc3a5rdarna-4.jpg?width=1320&hmac=1597d3556d9d840ed5ec68eb0c861c380f32c47d2f4fe226d89bb251562b17b7acd28dad1532b9b3abebec0b78399e758792e9a51e73370fc2fdedb94d3723eb"
)

Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: japones
)

Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: botanical
)

Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: japones
)

names = %w(Water Mist Clean Feed Repot Rotate)

names.each do |name|
  Chore.create!(name: name)
end
