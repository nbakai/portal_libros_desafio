class Libro < ApplicationRecord
    has_many :orders
    has_many :users, through: :orders
end
