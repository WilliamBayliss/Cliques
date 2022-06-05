class Clique < ApplicationRecord
    has_many :memberships
    has_many :members, through: :memberships, source: :user

    has_many :adminships
    has_many :administrators, through: :adminships, source: :user

    has_many :posts, dependent: :destroy

    validates :title, format: { without: /\s/, message: "Title cannot contain spaces." }
end
