class UsersController < ApplicationController
  def index
    @comedians = User.where(profile: "Comedian")
  end
end
