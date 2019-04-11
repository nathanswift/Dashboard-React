class Taskboard < ApplicationRecord
  belongs_to :companies
  has_many :columns, dependent: :destroy
end
