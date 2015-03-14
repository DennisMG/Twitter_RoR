class CountryController < ApplicationController
  
  def index
  	@countries=Country.order(:name)
  end

  def new
  	@country=Country.new

  end

  def create
  	@country = Country.new(country_params)
   
    if @country.save
      redirect_to country_index_path, flash: {notice: "Cliente creado exitosamente"}
    else
      render 'new'
    end
  end

  def edit
  	 @country=Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
 
    if @country.update(country_params)
      redirect_to country_index_path, flash: {notice: "Cliente actualizado exitosamente"}
    else
      render 'edit'
    end
  end

  private

    def country_params
      params.require(:country).permit(:name)
    end

end
