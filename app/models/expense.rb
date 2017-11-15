class Expense < ApplicationRecord
  default_scope { order(billed_at: :asc) }

  def self.total_for_current_month
    where("created_at > ? AND created_at < ?", Time.current.beginning_of_month, Time.current.end_of_month).sum(:price)
  end
end
