class Recipe < ApplicationRecord
    
    has_many :steps, dependent: :destroy
    validates :title, presence: { message:  "No, you must give the recipe a title!"} , uniqueness: true
    validates :author, presence: { message:  "I need to know who's written this recipe!"}
    validates :descr, presence: { message: "Must be yummy! Don't you tell me how to cook it?" }, length: {minimum: 2}

end
