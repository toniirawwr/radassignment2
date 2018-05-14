class ItemsController < ApplicationController
  before_action :set_item, only: [:show]
  
  def index
    @page = params['p'].to_i
    @prev_page = @page - 1 unless @page == 0
    @next_page = @page + 1 unless @page * 8 > New.count
    @items = New.all.order("created_at DESC").limit(8).offset(@page * 8)
    
    @space = " "
    
    @number = New.all.count
    
    
  end
  
  def comment
    @comments = Comment.all.order("created_at DESC").limit(3)
    @space = " "
  end
  
  def show
    @comments = Comment.where(news_id: (New.find(@item).news_id)).order("created_at DESC")
  end
  
  def new
    @item = Item.new
  end
  
  def create
      if signed_in? 
        @item = Item.create(item_params)
          #@item = Comment.create(new_params)
          
        @userid = session[:user_id]
        @item.user = current_user
          
        if @item.save
            
          if Item.find(Item.last).type == "New"
            flash[:success] = "Your news post was successfully created!"
            redirect_to root_path
          elsif Item.find(Item.last).type == "Comment"
            flash[:success] = "Your comment was successfully posted!"
            redirect_to newcomment_path
          end
        else
          flash[:error] = @item.errors.full_messages
          redirect_to :back
        end
          
          
      else 
        flash[:error] = "You must be signed in to submit, Please Login Here"
        redirect_to login_path
      end

  end
  
  private 
  def item_params
      params.require(:item).permit(:type, :title, :websource, :content, :news_id, :user_id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
  
end