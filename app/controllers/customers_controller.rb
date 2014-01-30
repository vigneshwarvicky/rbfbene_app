class CustomersController < ApplicationController
  
  def new
    @customer= Customer.new
  end

  def create
   @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:notice] = "Customer added Successfully"
      redirect_to customer_path(@customer)
  else 
      flash[:alert] = "Customer is not added Successfully"
      render 'new'
    end
  end
 

def show
  @customer = Customer.find(params[:id])
end

def destroy
   @customer = Customer.find(params[:id])
   @customer.destroy
   flash[:notice] = "Customer deleted"
   redirect_to customers_path    
end

def index
  @customers = Customer.all
end

def edit
   @customer = Customer.find(params[:id])
end

def update
   @customer = Customer.find(params[:id])

   if @customer.update_attributes(params[:customer])
        flash[:success] = "Updated customer Info"
        redirect_to customers_path(@customer)
      else
        flash[:alert] ="Fill all the fields"
        render 'edit'
      end
end

end
