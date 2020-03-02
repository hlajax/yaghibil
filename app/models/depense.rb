class Depense < ApplicationRecord
  belongs_to :administrateur
  belongs_to :automobile
end
