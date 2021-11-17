class Client < ApplicationRecord
    validates :user, presence: true
    validates :user, uniqueness: true
    validate :non_negative

    def non_negative
        if self.requests < 0
            self.errors.add(:requests, "field can't be lesser than zero")
        end
    end

end
