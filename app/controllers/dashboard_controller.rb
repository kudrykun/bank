class DashboardController < ApplicationController
  def index
    @holders = Holder.all
    @accounts = Account.all
  end
end
