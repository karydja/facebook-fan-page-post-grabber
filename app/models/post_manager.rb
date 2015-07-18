class PostManager
  def self.get_posts(fan_page_id, limit = 25, fields = [])
    begin
      fields = ["from{name}", "message"] if fields.blank?
      facebook = Koala::Facebook::API.new(ENV["FACEBOOK_ACCESS_TOKEN"])
      response = facebook.get_object("#{fan_page_id}/feed?fields=#{fields.join(",")}&limit=#{limit}")
      response_objects = convert_to_object(response)
    rescue Koala::Facebook::APIError => e
      nil
    end
  end

  private

  def self.convert_to_object(hash)
    result = []
    hash.each {|item| result << Post.new(item["from"]["name"], item["message"])}
    result
  end
end
