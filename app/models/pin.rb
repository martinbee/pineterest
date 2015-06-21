class Pin < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true, length: { maximum: 20}
  validates :photo, presence: true
  validates :content, presence: true, length: { maximum: 140}
  validates :link, presence: true

  belongs_to :user
  mount_uploader :photo, PhotoUploader

end
