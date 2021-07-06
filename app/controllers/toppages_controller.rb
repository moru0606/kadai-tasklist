class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.tasks.build  # form_with 用
    end
  end
end

