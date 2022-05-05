class Membership < ApplicationRecord
    belongs_to :clique
    belongs_to :user
end
