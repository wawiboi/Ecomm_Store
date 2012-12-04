class About < ActiveRecord::Base
  attr_accessible :story
  validates_presence_of :story
  validates :story, :length => {  :minimum => 500,
                                  :maximum => 3000,
                                  :too_short => "must have at least %{count} words",
                                  :too_long  => "must have at most %{count} words"
  }

end
