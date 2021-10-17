class AdsController < ApplicationController

  def index
    @ads = current_user.ads.where(deleted: false)
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(permit_params)
    @ad.user_id = current_user.id
    if @ad.save
      flash[:success] = "Add Created successfully"
      redirect_to ad_path(@ad)
    else
      flash[:danger] = "Not saved"
      render 'new'
    end
  end

  def edit
    @ad = current_user.ads.where(deleted: false).find(params[:id])
  end

  def update
    @ad = current_user.ads.where(deleted: false).find(params[:id])
    if @ad.update(permit_params)
      redirect_to ad_path(@ad)
    else
      flash[:danger] = "Not Updated"
      render 'edit'
    end
  end

  def show
    @ad = Ad.where(deleted: false).find(params[:id])
    @related_ads = Ad.where.not(id: @ad.id).where(purpose: @ad.purpose, property_type: @ad.property_type, city: @ad.city)
  end

  def destroy
    redirect_to ads_path and return if current_user.ads.find(params[:id]).update(deleted: true)
    flash[:danger] = "something went wrong"
    render 'show'
  end

  def ads_filter
    if params[:property_type].blank? && params[:city].blank? && params[:purpose].blank?
       nil
    else
      @ads = Ad.where(city: params[:city],deleted: false) if params[:city].present?
      @ads = @ads.where(purpose: params[:purpose]) if params[:purpose].present?
      @ads = @ads.where(property_type: params[:property_type]) if params[:property_type].present?
    end
  end

  private
    def permit_params
      params.require(:ad).permit(:title,:area,:address,:property_type,:price,:city,:description,:phone_no,:pic1,:avatar3,:pic2,:avatar4,:pic3,:pic4,:avatar5,:purpose,:electricity,:electricity_backup,:parking_space,:security_staff,:mosque,:bed,:bath,:community_gym,:nearby_hospital,:nearby_school,:Land_Area)
    end
end
