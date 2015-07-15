class Post
  attr_reader :author, :message

  def initialize(author, message)
    @author = author
    @message = message
  end
end
