class Operation < ApplicationRecord
  belongs_to :operator
  belongs_to :account
end
