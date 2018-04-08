class OpportunitiesController < ApplicationController

def index
@opportunities = Opportuity.all
end

def show
@Opportunity = Opportunity.find(opportunity_params)
end

def new
@Opportunity = Opportunity.new(opportunity_params)
end



def opportunity_params
  params.require(:opportunity).permit(:title, :description)
end
