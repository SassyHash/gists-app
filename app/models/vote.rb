class Vote < ActiveRecord::Base
  attr_accessible :user_id, :gist_id, :point_addition

  belongs_to :user
  belongs_to :gist

end
