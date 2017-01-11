class Account < ApplicationRecord
  belongs_to :holder
  belongs_to :deposit_type
  has_many :operations
end
