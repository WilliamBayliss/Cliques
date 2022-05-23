class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable
    acts_as_votable
    def add_score
        self.post.score += 1
        self.post.save
    end

    def subtract_score
        self.post.score -= 1
        self.post.save
    end
end
