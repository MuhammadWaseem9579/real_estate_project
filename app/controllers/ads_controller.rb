class AdsController < ApplicationController

  def index
    @ads = current_user.ads
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
    @ad = current_user.ads.find(params[:id])
  end

  def update
    @ad = current_user.ads.find(params[:id])
    if @ad.update(permit_params)
      redirect_to ad_path(@ad)
    else
      flash[:danger] = "Not Updated"
      render 'edit'
    end
  end

  def show
    @ad = Ad.find(params[:id])
    @related_ads = Ad.where.not(id: @ad.id).where(purpose: @ad.purpose, property_type: @ad.property_type, city: @ad.city)
  end

  def destroy
  end

  def ads_filter
    if params[:property_type].present? || params[:want_to].present?
      if params[:property_type]
        @ads = Ad.where(property_type: params[:property_type])
      end
      if params[:purpose]
        @ads = @ads.where(purpose: params[:want_to])
      end
      render json: {success: true, message: "ye low", ads: @ads}
    else
      render json: {success: false, message: "No Data Found"}
    end
  end

  private
    def permit_params
      params.require(:ad).permit(:title,:area,:address,:property_type,:price,:city,:description,:phone_no,:pic1,:avatar,:pic2,:avatar1,:pic3,:pic4,:avatar2,:avatar3,:purpose,:electricity,:electricity_backup,:parking_space,:security_staff,:mosque,:bed,:bath,:community_gym,:nearby_hospital,:nearby_school)
    end
end
