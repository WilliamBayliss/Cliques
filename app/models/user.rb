class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :username, presence: true, uniqueness: { case_insensitive: false }
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  has_many :posts
  has_many :comments

  has_many :memberships
  has_many :cliques, through: :memberships, as: :member

  has_many :adminships
  has_many :admin_cliques, through: :adminships, as: :administrator, source: "clique"

  attr_writer :login

  def login
    @login || self.username || self.email
  end
end
