class EstablishmentsController < ApplicationController
  def index
    @establishment = Establishment.all
  end
end
