class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if user_signed_in?
      case current_user.profile
      when "Customer"
        redirect_to(customer_path(current_user) , allow_other_host: true)
      when "Comedian"
        redirect_to(comedian_path(current_user) , allow_other_host: true)
      when "Owner"
        redirect_to(owner_path(current_user) , allow_other_host: true)
      end
    end
  end

  def comedian
    @comedianEvent = Event.where(user_id: current_user.id)
  end

  def owner
    @ownerEstablishment = Establishment.where(user_id: current_user.id)
  end
end
