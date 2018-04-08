class OpportunitiesController < ApplicationController

def index
  @opportunities = Opportunity.all
end

def show
  @opportunity = Opportunity.find(params[:id])
end

def new
  @opportunity = Opportunity.new
end

def create
  @opportunity = Opportunity.new(opportunity_params)
  @opportunity.save
  redirect_to @opportunity
end

private

def opportunity_params
  params.require(:opportunity).permit(:title, :description)
end

end
