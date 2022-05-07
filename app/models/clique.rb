class Clique < ApplicationRecord
    has_many :memberships
    has_many :users, through: :memberships

    has_many :adminships
    has_many :administrators, through: :adminships, class_name: :user
end
