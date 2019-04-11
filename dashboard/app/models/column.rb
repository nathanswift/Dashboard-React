class Column < ApplicationRecord
  belongs_to :taskboard
  has_many :tasks, dependent: :destroy
end
