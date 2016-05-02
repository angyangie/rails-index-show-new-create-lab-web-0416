class CouponsController < ApplicationController

  def index 
     @coupons = Coupon.all
  end

  def show
   @coupon = Coupon.find(params[:id])
  end

  def new 

  end

  def create 
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end 

end

#The coupon codes on the index page should link to their corresponding coupon show page, you should use the link_to and route helper methods instead of hard coding the HTML <a> tag

