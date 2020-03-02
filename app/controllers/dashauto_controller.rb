class DashautoController < ApplicationController
  def index
  	@fonds = Fond.all
  	@autoexpenses = Autoexpense.all
  end
end
