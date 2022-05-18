class Post < ApplicationRecord
    validates :content, presence: true
    belongs_to :user
    belongs_to :clique
    has_many :comments, as: :commentable
end
