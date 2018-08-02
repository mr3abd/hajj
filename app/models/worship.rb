class Worship < ApplicationRecord

  has_many :pin_worship, :dependent => :destroy

end
