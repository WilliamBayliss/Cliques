class Post < ApplicationRecord
    validates :content, presence: true
    belongs_to :user
    belongs_to :clique
    has_many :comments, as: :commentable

    def add_score
        self.post.score += 1
        self.post.save
    end

    def subtract_score
        self.post.score -= 1
        self.post.save
    end
end
