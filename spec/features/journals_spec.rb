require 'rails_helper'

RSpec.feature "Journal Management" do
  scenario "visiting the list of journals" do
    create(:journal, name: "My Journal")
    visit "/journals"
    expect(page).to have_text("Journals Home")
    expect(page).to have_text("My Journal")
  end

  scenario "adding a journal" do
    visit "/journals"
    click_on "Create Journal"
    fill_in "Name", with: "My Journal"
    click_button "Create Journal"

    expect(page).to have_text("Journal was successfully created.")
  end
end
