class Team < ApplicationRecord
    has_many :ballot_inititives, inverse_of: :team

    has_many :team_users
    has_many :users, through: :team_users


    accepts_nested_attributes_for :ballot_inititives, reject_if: :all_blank, allow_destroy: true
end
