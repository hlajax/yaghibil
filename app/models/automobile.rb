class Automobile < ApplicationRecord
  belongs_to :administrateur
  has_many :depenses
  has_many :autoexpenses
end
