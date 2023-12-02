class UsersController < ApplicationController
  def index
    @users = User.where(profile: "comedian")
  end
end
