class CategoryController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.name = params[:category][:name]
    @category.save

    if @category
      flash[:success] = "Vous avez bien modifé la catégorie :)"
      redirect_to admin_index_path
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to root_path
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_index_path
  end

end
