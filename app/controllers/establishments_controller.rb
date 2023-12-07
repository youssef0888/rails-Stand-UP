class EstablishmentsController < ApplicationController
  def index
    @establishments = Establishment.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR bio ILIKE :query"
      @establishments = @establishments.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end
end
