class Pet < ApplicationRecord
  SPECIES = ["turtle", "dog", "horse", "cat", "hedgehog"]
  
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
