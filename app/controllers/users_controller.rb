class UsersController < ApplicationController
  def index
    @comedians = User.where("profile = 'Comedian'")
      if params[:query].present?
        sql_subquery = "last_name ILIKE :query or first_name ILIKE :query"
        @comedians = @comedians.where(sql_subquery,query: "%#{params[:query]}%")
      end
  end
end
