class Category < ApplicationRecord
  has_many :rules
  has_many :transactions
end
