# frozen_string_literal: true

class StatisticsController < ApplicationController
  def index
    @expenses_by_month = Expense
      .unscoped
      .select("date_trunc( 'month', billed_at ) as month, sum(price) as total")
      .group('month')
      .order("month desc")
  end
end
