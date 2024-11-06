class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy # Agrega esta línea

  has_many :likes
  has_many :liked_users, through: :likes, source: :user


  # Validaciones
  validates :title, presence: true

    
                      
end
