class HomeController < ApplicationController
  def index
    @data = []
    Google::Search::Image.new(:query => 'puppy', :image_size => :large, :offset => (0..10).to_a.sample).each do |image|
      @data << image.uri
    end
    @image = @data.sample
  end
end