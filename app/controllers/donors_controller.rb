class DonorsController < ApplicationController
  def create
    @campaign = Campaign.find(params[:campaign_id])
    @donor = @campaign.donors.create(params[:donor])
    redirect_to campaign_path(@campaign)
  end
end
