class MemosController < ApplicationController
  before_action :set_memo, only: [:edit, :update, :destroy]
  def index
    @memo = Memo.new
    @memos = Memo.all
  end
  
  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      @memos = Memo.all
      redirect_to '/memos'
    else
      @memos = Memo.all
      render 'index'
    end
  end
  
  def edit
  end
  
  def update
    if @memo.update(memo_params)
      redirect_to '/memos'
    else
      render 'edit'
    end
  end
  
  def destroy
    @memo.destroy
    redirect_to root_path
  end
  
  private 
  def memo_params
    params.require(:memo).permit(:word)
  end
  
  def set_memo
    @memo = Memo.find(params[:id])
  end
  
end
