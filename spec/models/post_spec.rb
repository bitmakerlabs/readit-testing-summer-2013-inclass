require 'spec_helper'

describe Post do
  describe "#upvote" do
    it "should set the votes to 1 on the first upvote" do
      post = FactoryGirl.create :post
      user = FactoryGirl.create :user
      post.upvote(user)
      # Old and bad
      post.votes.should eq 1
      # New and shiny (better in new isoteric ways)
      expect(post.votes).to eq 1
    end

    it "should increase the number of votes" do
      post = FactoryGirl.create :post
      user = FactoryGirl.create :user
      post.upvote(user)
      post.upvote(user)
      expect(post.votes).to eq 2
    end

    it 'should not allow the creator of the post to vote on it' do
      post = FactoryGirl.create :post
      expect(post.upvote post.user).to eq false
    end

    it 'should allow users to vote on it' do
      post = FactoryGirl.create :post
      user = FactoryGirl.create :user
      expect(post.upvote user).to eq true
    end

  end



end
