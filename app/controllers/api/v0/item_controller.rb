module Api
    module V0
        class ItemController < ApplicationController
            skip_before_action :verify_authenticity_token

            def show
                @count = Item.all.count
                if (params[:id]).to_i <= @count
                    @item = Item.find(params[:id])
                    
                    if @item.type == "New"
                        msg = generate_news(@item)
                        respond_to do |format|
                            format.json do
                              render json: msg
                            end
                          end
                          
                    elsif @item.type == "Comment"
                        msg = generate_comments(@item)
                        respond_to do |format|
                            format.json do
                              render json: msg
                            end
                        end
                    end
                else
                    msg = { :status => 400, 
                                :message => "Error! Item ID doesnt exist"
                    }
                    render :json => msg
                end
            end
            
            def generate_news(item)
                { :status => 200, 
                                :message => "Success!", 
                                :by => User.find(@item.user_id).username,
                                :id => item.id, 
                                :time => item.created_at.to_time.to_i,
                                :title => item.title, 
                                :type => item.type, 
                                :url => item.websource
                 }
            end
            
            def generate_comments(item)
                { :status => 200, 
                                :message => "Success!",
                                :by => User.find(@item.user_id).username,
                                :id => @item.id, 
                                :time => @item.created_at.to_time.to_i,
                                :text => @item.content,
                                :type => @item.type
                }
            end
            

            def create
                @item = Item.new(item_params)
                 
                if @item.save
                    if Item.find(Item.last).type == "New"
                        msg = { :status => 200, 
                                :message => "Success!", 
                                :by => User.find(@item.user_id).username,
                                :id => @item.id, 
                                :time => @item.created_at.to_time.to_i,
                                :title => @item.title, 
                                :type => @item.type, 
                                :url => @item.websource
                        }
                        render :json => msg
                    elsif Item.find(Item.last).type == "Comment"
                        msg = { :status => 200, 
                                :message => "Success!",
                                :by => User.find(@item.user_id).username,
                                :id => @item.id, 
                                :time => @item.created_at.to_time.to_i,
                                :text => @item.content,
                                :type => @item.type
                        }
                        render :json => msg
                    end
                else 
                    render json: {status: 400, Message: 'Item not saved', data:@item.errors}, status: :unprocessable_entity
                end
            end
           
            private
            def item_params
                if params[:type].eql? "New"
                    params.require(:item).permit(:type, :title, :websource, :news_id, :user_id)
                elsif params[:type].eql? "Comment"
                    params.require(:item).permit(:type, :content, :news_id, :user_id)
                end
            end
        end
    end
end