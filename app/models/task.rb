class Task < ApplicationRecord
    validates :name, presence: true, length: { maximum: 30 }

    has_one_attached :image

    belongs_to :user

    scope :recent, -> { order(created_at: :desc) }
end
