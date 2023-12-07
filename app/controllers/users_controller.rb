class UsersController < ApplicationController
  def index
    @comedians = User.where("profile = 'Comedian'")
      if params[:query].present?
        sql_subquery = "lastName ILIKE :query"
        @comedians = @comedians.where("firstName = 'tarik'")
      end
  end
end
