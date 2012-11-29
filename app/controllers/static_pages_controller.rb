class StaticPagesController < ApplicationController
  def contact
  end
  def admin
	@products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
end
