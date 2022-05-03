class Membership < ApplicationRecord
    belongs_to :user
    belongs_to :clique
end
