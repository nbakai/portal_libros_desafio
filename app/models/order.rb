class Order < ApplicationRecord
  belongs_to :libro
  belongs_to :user
  belongs_to :billing, optional: true
end
