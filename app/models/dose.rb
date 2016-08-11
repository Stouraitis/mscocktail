class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail, :ingredient, presence: true
  validates_uniqueness_of :cocktail_id, :scope => :ingredient_id

end


# A dose must have a description,
# a cocktail and an ingredient
# , and [cocktail, ingredient] couples should be unique.
