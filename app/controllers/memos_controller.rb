class MemosController < ApplicationController
  def index
    @memo = Memo.new
    @memos = Memo.all
  end
  
  def create
    @memo = Memo.new(memo_params)
    @memo.save
    redirect_to '/memos'
  end
  
  private 
  def memo_params
    params.require(:memo).permit(:word)
  end
end
