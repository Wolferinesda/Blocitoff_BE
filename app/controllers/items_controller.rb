class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)

    if @item.save
      flash[:notice] = "To-Do item: \"#{@item.name.capitalize}\" was saved successfully! :)"
      redirect_to user_path(:id)
    else
      flash[:alert] = "There was an error saving your item.  Please try again."
      redirect_to user_path(:id)
    end

    # respond_to do |format|
    #   format.html { redirect_to user_path(:id) }
    #   format.js
    # end
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:format])

    if @item.destroy
      flash.now[:notice] = "Item: \"#{@item.name.capitalize}\" is complete!"
      redirect_to user_path(:id)
    else
      flash.now[:alert] = "There was an error marking off this item."
      redirect_to user_path(:id)
    end

    # respond_to do |format|
    #   format.html { redirect_to user_path(:id) }
    #   format.js
    # end
  end

  private

  def item_params
    params.require(:item).permit(:name, :user)
  end
end
