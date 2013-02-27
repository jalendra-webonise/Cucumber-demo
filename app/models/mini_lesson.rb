class MiniLesson < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  belongs_to :workshop
  has_many :quizzes   , :dependent => :destroy
  validates :title, :description, :nav_order, presence: true
  validates :nav_order, uniqueness: {scope: :workshop_id}
  accepts_nested_attributes_for :quizzes ,:allow_destroy => true


  attr_accessible :attachment, :description, :title   , :nav_order , :quizzes_attributes
end
