class DosesController < ApplicationController

  def new
    # @cocktail = Cocktail.find(params[:cocktail_id])
    # @ingredient = Ingredient.new
    # @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to @cocktail
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(@dose.cocktail_id)
    @dose.destroy
    redirect_to @cocktail
  end

  private

  def dose_params
    params.require(:dose).permit(:id,:description,:cocktail_id,:ingredient_id)
  end
end
