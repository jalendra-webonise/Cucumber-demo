class MiniLesson < ActiveRecord::Base
  attr_accessible :attachment, :description, :title   , :nav_order
  belongs_to :workshop
  validates :title, :description, :nav_order, presence: true
  validates :nav_order, uniqueness: {scope: :workshop_id}

  mount_uploader :attachment, AttachmentUploader
end
