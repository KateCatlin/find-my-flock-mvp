class DashboardController < ApplicationController
  def index
    @jobs = Job.all
  end
end
