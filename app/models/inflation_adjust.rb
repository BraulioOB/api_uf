class InflationAdjust < ApplicationRecord
    validates :day, presence: true
    validates :day, uniqueness: true
    
    validates :price, presence: true
end
