class User < ActiveRecord::Base

  has_many :posts
  validates :user_name, presence: true, length: {minimum: 5}
end
