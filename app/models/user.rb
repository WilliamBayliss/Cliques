class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :posts
  has_many :memberships
  has_many :cliques, through: :memberships

  has_many :adminships
  has_many :cliques, through: :adminships

  attr_writer :login

  def login
    @login || self.username || self.email
  end
end
