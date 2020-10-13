class Prototype < ApplicationRecord
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
  # validates :content, presence: true, unless: :was_attached?

  # def was_attached?
  #   self.image.attached?
  # end

  belongs_to :user, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :image
  
end
