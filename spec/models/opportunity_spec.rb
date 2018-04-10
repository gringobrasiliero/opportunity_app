require 'rails_helper'

RSpec.describe Opportunity, type: :model do

  describe Opportunity do
    it 'can be created' do

      opportunity = Opportunity.create!(title: "My title", description: "The Opportunity description")
      expect(opportunity).to be_valid
    end
  end
end
