require 'rails_helper'

describe PostsController, type: :controller do
  describe "#index" do
    it "searches for fan page posts and returns them as a Post array" do
      VCR.use_cassette('facebook_cassete') do
        get :index, { fan_page_id: "AFantasticaFabricaDeDocinhos" }
        assigns(:posts).each { |post| expect(post).to be_a Post }
      end
    end
  end
end
