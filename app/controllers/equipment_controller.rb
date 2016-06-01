class EquipmentController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def show
    @equipment = Equipment.find(params[:id])
  end


  def create
    @equipment = Equipment.new(equipment_params)    # 実装は終わっていないことに注意!
    if @equipment.save
      redirect_to @equipment
    else
      render 'list'
    end
  end

  def equipment_params
    params.require(:equipment).permit(:name, :model_number, :start_date)
  end

end
