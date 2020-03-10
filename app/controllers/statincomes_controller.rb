class StatincomesController < ApplicationController
  def index
  	@statincomes_by_month = Income
      .unscoped
      .select("date_trunc( 'month', billed_at ) as month, sum(price) as total")
      .group('month')
      .order("month desc")
  end
end
