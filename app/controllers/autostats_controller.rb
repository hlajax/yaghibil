class AutostatsController < ApplicationController
  def index
    @autoexpenses_by_month = Autoexpense
      .unscoped
      .select("date_trunc( 'month', billed_at ) as month, sum(price) as total")
      .group('month')
      .order("month desc")
  end
end
