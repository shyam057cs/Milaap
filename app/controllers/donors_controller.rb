class DonorsController < ApplicationController
  def new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @donor = @campaign.donors.create(params[:donor])
    redirect_to new_campaign_donor_path

  end
end
