require 'test_helper'

class EventTest < ActiveSupport::TestCase

  def setup
    @event = events(:feb)
  end


  test "has a valid fixture" do
    assert @event.valid?
  end


  should validate_presence_of(:occurs_at)



  should validate_presence_of(:location)

  should validate_uniqueness_of(:location).scoped_to(:occurs_at).with_message('already an event scheduled at this location at this time and place').case_insensitive


  should have_many(:movies)
  should have_many(:votes)


end
