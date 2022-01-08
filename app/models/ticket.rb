class Ticket < ApplicationRecord
  # 関連先がなくてもvalidationエラーにならない
  belongs_to :user, optional: true
  belongs_to :event

  validates :comment, length: { maximum: 30 }, allow_blank: true
end
