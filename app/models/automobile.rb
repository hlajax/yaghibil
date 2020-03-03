class Automobile < ApplicationRecord
			default_scope { order(billed_at: :desc) }

  def self.total_for_current_month
    where("billed_at > ? AND billed_at < ?", Time.current.beginning_of_month, Time.current.end_of_month).sum(:prix)
  end
  belongs_to :administrateur
  belongs_to :etat
  has_many :depenses
  has_many :autoexpenses
end
