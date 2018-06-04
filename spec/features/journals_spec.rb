require 'rails_helper'

RSpec.feature "Journal Management" do
  scenario "Visiting the list of journals" do
    visit "/journals"
    expect(page).to have_text("Journals Home")
  end
end
