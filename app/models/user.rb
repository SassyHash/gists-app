class User < ActiveRecord::Base
  attr_accessible :username, :session_token
  has_many :gists
  has_many :favorites
  validates :username, :presence => true, :uniqueness => {case_sensitive: false}

end
