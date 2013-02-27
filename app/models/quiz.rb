class Quiz < ActiveRecord::Base
  attr_accessible :integer, :mini_lesson_id, :query
  belongs_to :mini_lesson
end
