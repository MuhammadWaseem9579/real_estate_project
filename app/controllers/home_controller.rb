class HomeController < ApplicationController
  def index
    @ads = Ad.paginate(page: params[:page], per_page: 3).order('created_at DESC')
    @most_recent_ads = Ad.order('created_at DESC').limit(10)
  end
  def get_house_property_ads
    @ads = Ad.where(property_type: "House").paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end
  def get_commercial_property_ads
    @ads = Ad.where(property_type: "Commercial").paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end
  def get_rent_property_ads
    @ads = Ad.where(purpose: "Rent").paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end
end
