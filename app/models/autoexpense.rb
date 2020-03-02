class Autoexpense < ApplicationRecord
		default_scope { order(billed_at: :desc) }

  def self.total_for_current_month
    where("billed_at > ? AND billed_at < ?", Time.current.beginning_of_month, Time.current.end_of_month).sum(:price)
  end
	belongs_to :administrateur
	belongs_to :automobile
end
