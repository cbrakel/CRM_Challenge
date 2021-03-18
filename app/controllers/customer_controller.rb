class CustomerController < ApplicationController
  def index
    @customers = Customer.all
  end

  def sort
    @customers = Customer.order(:name)
  end

  def missing_email
    @customers = Customer.where(email: [nil, ""])
  end
end
