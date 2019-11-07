class Step < ApplicationRecord
  belongs_to :recipe
  validates :number, numericality: { only_integer: true }, presence:true
end
