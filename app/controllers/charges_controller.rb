class ChargesController < ApplicationController

  def create
    # Amount in cents
    @amount = 200

    customer = Stripe::Customer.create(
        :email => current_user.email,
        :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Motivation lover',
        :currency    => 'usd'
    )

    if charge.paid
      current_user.customer = 'paid'
      current_user.save
      flash[:notice] = "You paid!"
      redirect_to premium_path
    end

    rescue Stripe::CardError => e
      flash[:alert] = e.message

    redirect_to premium_path
  end


end
