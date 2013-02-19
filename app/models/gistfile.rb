class Gistfile < ActiveRecord::Base
  attr_accessible :body
  belongs_to :gist, :inverse_of => :gistfiles

  validates :body, :presence => true

end
