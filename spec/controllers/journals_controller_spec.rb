require "rails_helper"

RSpec.describe JournalsController do
  it "should get index" do
    get :index
    expect(response.code).to eq "200"
  end

  it "should get new" do
    get :new
    expect(response.code).to eq "200"
  end

  it "should create a journal" do
    expect {
      post(:create, params: {journal: {name: "Journal Name"}})
    }.to change(Journal, :count).by(1)
  end

  it "should redirect to journals index" do
    post(:create, params: {journal: {name: "Journal Name"}})
    expect(response).to redirect_to(journals_url)
  end
end
