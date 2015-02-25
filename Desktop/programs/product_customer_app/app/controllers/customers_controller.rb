class CustomersController < ApplicationController
before_action :set_customer, only: [:show, :edit, :update, :destroy]


  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(whitelist_customer_params)
      if @customer.save
        redirect_to action: 'index'
      else
        render :new
      end
  end

  def show
    @customer_find = Customer.find(params[:id])
    @cust_id = @customer_find.id
    @cust_trans = Transaction.where(:customer_id => @cust_id)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    if @customer.update(whitelist_customer_params)
        redirect_to action: 'index'
      else
        render :edit
      end
  end



end




private

  def whitelist_customer_params
    params.require(:customer).permit(:name, :email)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
