class Task < ApplicationRecord
  validates :title, presence: true, length: { maximum: 15}
  validates :description, length: { in: 6..100 }, allow_blank: true

  after_initialize :set_default_status, if: :new_record?

  private

  def set_default_status
    self.status ||= false
  end
end
