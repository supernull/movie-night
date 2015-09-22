require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  test 'has a valid fixture' do
      @movie = movies(:alien)
      assert @movie.valid?
  end

  @movie = Movie.new
  should validate_presence_of(:title)
  should validate_presence_of(:url)


  should belong_to(:event)
  should have_many(:votes)

end
