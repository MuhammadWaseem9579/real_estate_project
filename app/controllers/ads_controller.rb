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
  end

  def destroy
  end

  def ads_filter
    if params[:filter].present?
      if params[:filter] == "rent"
        @ads = Ad.where("want_to ILIKE ?", "%#{param[:filter]}%")
      else
        @ads = Ad.where("property_type ILIKE ?", "%#{params[:filter]}%")
      end
    else
      @ads = nil
      flash[:notice] = "No filter passed"
    end
    respond_to do |format|
      format.html  { render :html => @ads }
      format.json  { render :json => @ads }
    end
  end

  private
    def permit_params
      params.require(:ad).permit(:title,:area,:address,:property_type,:price,:city,:description,:phone_no,:pic1)
    end
end
