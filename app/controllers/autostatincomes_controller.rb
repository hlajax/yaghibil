class AutostatincomesController < ApplicationController
  def index
  	@autostatincomes_by_month = Autoincome
      .unscoped
      .select("date_trunc( 'month', billed_at ) as month, sum(price) as total")
      .group('month')
      .order("month desc")
  end
end
