require 'rubygems'
require 'httparty'

class PostManager
  include HTTParty

  def self.get_posts(fan_page_id, limit = 25)
    uri = "https://graph.facebook.com/#{fan_page_id}/feed"
    options = {
      query: {
        access_token: ENV["FACEBOOK_ACCESS_TOKEN"],
        fields: "from{name},message",
        limit: limit,
        format: "json"
      }
    }

    response = HTTParty.get(uri, options)
    response_objects = convert_to_object(response["data"]) unless response["data"].nil?
  end

  private

  def self.convert_to_object(hash)
    result = []
    hash.each {|item| result << Post.new(item["from"]["name"], item["message"])}
    result
  end
end
