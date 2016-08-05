class RecipiesController < ApplicationController
  def index
  @recipies = Recipie.all
  end

  def create
    @recipie = Recipie.new(recipie_params)
    @recipie.chef = Chef.find(1)
    if @recipie.save
      flash[:success] = "Recipie created successfully"
      redirect_to recipies_path
    else
      render :new
      end
  end

  def new
    @recipie = Recipie.new
  end

  def edit
    @recipie = Recipie.find(params[:id])
  end

  def show
    @recipie = Recipie.find_by_id(params[:id])
  end

  def update
    @recipie = Recipie.find(params[:id])
    if @recipie.update(recipie_params)
      flash[:success] = "Recipie updated successfully"
      redirect_to recipy_path(@recipie)
    else
      render :edit
    end
  end

  def destroy
  end


  private

     def recipie_params
       params.require(:recipie).permit(:name, :summary, :description)
     end
end
