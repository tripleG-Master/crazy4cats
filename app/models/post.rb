class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  

    # Validaciones
    validates :title, presence: true

    
                      
end
