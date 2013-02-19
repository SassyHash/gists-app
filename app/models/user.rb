class User < ActiveRecord::Base
  attr_accessible :username, :session_token
  has_many :gists
  has_many :taggings
  has_many :favorites
  has_many :votes
  validates :username, :presence => true, :uniqueness => {case_sensitive: false}

end
