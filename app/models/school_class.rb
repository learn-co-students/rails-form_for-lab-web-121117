class SchoolClass < ActiveRecord::Base
  def class_room
    self.title + " " + self.room_number.to_s
  end
end
