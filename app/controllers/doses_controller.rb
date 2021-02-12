class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    if @dose.save
      flash[:success] = "dose successfully created"
      redirect_to cocktail_path(@cocktail)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  def destroy
    @dose = Dose.find(params[:id => false])
    if @dose.destroy
      flash[:success] = 'dose was successfully deleted.'
      redirect_to cocktail_path(@dose.cocktail)
    else
      flash[:error] = 'Something went wrong'
      redirect_to cocktail_path(@dose.cocktail)
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

def create
  @object = Object.new(params[:object])
  if @object.save
    redirect_to @object
  else
    render 'new'
  end
end

