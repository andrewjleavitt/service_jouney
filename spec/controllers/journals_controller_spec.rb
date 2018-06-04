require "rails_helper"

RSpec.describe JournalsController do
  it "returns a 200" do
    get :index
    expect(response.code).to eq "200"
  end
end
