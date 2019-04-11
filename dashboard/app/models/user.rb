class User < ApplicationRecord
  belongs_to :company
  has_many :messages, dependent: :destroy
end
