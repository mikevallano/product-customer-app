class TransactionsController < ApplicationController
before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(whitelist_transaction_params)
      if @transaction.save
        redirect_to action: 'index'
      else
        render :new
      end
    end

  def show
  end

  def edit
  end
end


private

  def whitelist_transaction_params
    params.require(:transaction).permit(:customer_id, :product_id)
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

