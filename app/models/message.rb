class Message < ApplicationRecord
  validates :author, presence: true
  validates :author_slug, presence: true
  validates :content, presence: true

  scope :safe, -> { where(kind: 'safe') }

end
