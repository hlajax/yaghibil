class Expense < ApplicationRecord
  default_scope { order(billed_at: :desc) }

  def self.total_for_current_month
    where("billed_at > ? AND billed_at < ?", Time.current.beginning_of_month, Time.current.end_of_month).sum(:price)
  end
end
