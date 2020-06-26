class MessagesController < ApplicationController
  before_action :set_message, except: [:index, :new, :create]


  def index
    @messages = Message.includes(:images).order('created_at DESC')
  end

  def new
    @message = Message.new
    @message.images.new
  end

  def create
    @message = Message.new(message_params)
  if @message.save
    redirect_to root_path, notice: '保存できました'
  else
    flash.now[:alert] = '内容を入力してください'
    render :new
  end
  end

  def edit
  end

  def update
    if @message.update(message_params)
      render :show
    else
      render :edit
    end
  end

  def destroy
    @message.destroy
    redirect_to root_path, notice: '削除しました'
  end

  private

  def message_params
    params.require(:message).permit(:title, :content, images_attributes: [:src]).merge(user_id: current_user.id)
  end

  def set_message
    @message = Message.find(params[:id])
  end

  
end
