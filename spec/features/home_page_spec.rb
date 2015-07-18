require 'rails_helper'

feature "home page", type: :feature do
  before do
    visit root_path
  end

  scenario "user searches posts" do
    VCR.use_cassette('facebook_cassete') do
      fill_in "fan_page_id", with: "AFantasticaFabricaDeDocinhos"
      click_button "Pesquisar"

      expect(page).to have_text("um lindo e delicioso ovo de chocolate")
    end
  end
end
