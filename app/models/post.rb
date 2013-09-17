class Post < ActiveRecord::Base

  validates :name, presence: true, length: {minimum: 3}
  validates :content, presence: true, length: {minimum: 50}
  validates :votes, presence: true, numericality: true
  validates :user, presence: true

  belongs_to :user

  def upvote(user)
    return false if user == self.user
    self.votes += 1
    return true
  end

end
