class Message < ApplicationRecord
  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :title,presence: true
  validates :content,presence: true
end
