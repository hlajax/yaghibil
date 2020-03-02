class Administrateur < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  	has_many :expenses
  	has_many :autoexpenses
  	has_many :autoincomes
	has_many :incomes
	has_many :automobiles
	has_many :depenses
end
