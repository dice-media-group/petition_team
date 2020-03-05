class Team < ApplicationRecord
    has_many :ballot_inititives, inverse_of: :team
    accepts_nested_attributes_for :ballot_inititives, reject_if: :all_blank, allow_destroy: true
end
