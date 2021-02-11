class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
  def show
    @cocktail = Cocktail.find(params[:id])
  end
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      flash[:success] = "cocktail successfully created"
      redirect_to @cocktail
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  def new
    @cocktail = Cocktail.new
  end
  
  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
