class Clique < ApplicationRecord
    has_many :memberships
    has_many :members, through: :memberships, source: :user

    has_many :adminships
    has_many :administrators, through: :adminships, source: :user

    has_many :posts, dependent: :destroy

    validates :title, format: { without: /\s/, message: "Title cannot contain spaces." }


  def update_reputation
    reputation = 0
    self.posts.each do |post|
      reputation += post.cached_votes_score
    end
    self.reputation = reputation
    self.save
  end
end
