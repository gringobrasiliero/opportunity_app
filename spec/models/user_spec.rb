require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.first
  end

  it "has many opportunities" do
    @user.opportunities.create

    expect(@user.opportunities.count).to eq(1)
  end

  it "has a profile" do
    @user.profile = @user.profile.create

    expect(@user.profile).to be_a(Profile)
  end

end
