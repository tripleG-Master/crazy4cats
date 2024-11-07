# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Post.destroy_all
User.destroy_all

# Crear usuarios
user1 = User.create!(email: 'catlover@crazy4cats.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 'migthycat@mail.com', password: 'password', password_confirmation: 'password')
user3 = User.create!(email: 'nonloon@mail.com', password: 'password', password_confirmation: 'password')
user4 = User.create!(email: 'testing@mail.com', password: 'password', password_confirmation: 'password')

# Crear posts con imágenes locales
# post1 = Post.create!(title: 'Hermooso', user_id: user1.id)
# post1.image.attach(io: File.open(Rails.root.join('public', 'images', 'gato_ventana.jpeg')), filename: 'gato_ventana.jpeg')


# Método para obtener las rutas de las imágenes
def load_image_paths
    Dir[Rails.root.join('public', 'images', '*.jpeg')].map { |file| File.basename(file) }
end

# Crear posts con imágenes dinámicamente
users = User.all
images = load_image_paths

users.each_with_index do |user, index|
    next if index >= images.size # Evitar errores si hay menos imágenes que usuarios
    post = Post.create!(title: "Seed #{user.email}", user_id: user.id)
    post.image.attach(io: File.open(Rails.root.join('public', 'images', images[index])), filename: images[index])
    
end

