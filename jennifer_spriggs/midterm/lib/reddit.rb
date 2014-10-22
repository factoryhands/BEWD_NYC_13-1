require 'RestClient'
require 'pry'
require 'json'

class Reddit
  attr_accessor :posts, :url

  def initialize
    @posts = []
    @url = 'http://www.reddit.com/r/catpictures.json'
  end

#finds first photo of subreddit
  def first_picture
    @posts[1][:photo]
  end

#parses through reddit API to find thumbnail photo of cat 
  def get_pictures
    response = RestClient.get(@url)
    parsed_response = JSON.parse(response)

    parsed_response["data"]["children"].map do |post|
      photo = post['data']['thumbnail'] 
      @posts << {photo: photo}
    end
  end

#body of media text
  def show_posts
    @posts.each do |post|
      puts "LOOK AT THIS CUTIE: #{post[:photo]}"
    end
  end

end