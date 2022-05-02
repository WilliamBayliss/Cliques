class Membership < ApplicationRecord
    has_one :user
    has_one :clique
end
