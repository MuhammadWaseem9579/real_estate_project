class HomeController < ApplicationController
  def index
    @ad_filter = Ad.new
    @ads = Ad.where(deleted: false, state: "running").paginate(page: params[:page], per_page: 3).order('created_at DESC')
    # @popular_ads = Ad.order('created_at DESC').limit(10)
    @featured_ads = Ad.where(deleted: false,featured_ad: true).order('updated_at DESC').limit(10)
  end
  def get_house_property_ads
    @ads = Ad.where(deleted: false, property_type: "House").paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end
  def get_commercial_property_ads
    @ads = Ad.where(deleted: false, property_type: "Commercial").paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end
  def get_rent_property_ads
    @ads = Ad.where(deleted: false, purpose: "Rent").paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end
  def get_plot_property_ads
    @ads = Ad.where(deleted: false, property_type: "Plot").paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end
end
