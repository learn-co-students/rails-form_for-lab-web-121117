class SchoolClass < ActiveRecord::Base
  def show
    title + " - " + room_number.to_s
  end
end