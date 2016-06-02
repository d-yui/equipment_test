class EquipmentController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def index
    @equipment = Equipment.all
  end

  def list

  end

  def create
    @equipment = Equipment.new(equipment_params)    # 実装は終わっていないことに注意!
    if @equipment.save
      redirect_to @equipment
    else
      render 'list'
    end
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update_attributes(equipment_params)
      flash[:success] = "更新成功"
      redirect_to @equipment
    else
      render 'edit'
    end
  end

  def equipment_params
    params.require(:equipment).permit(:name, :model_number, :start_date)
  end

end
