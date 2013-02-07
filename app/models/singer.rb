class Singer < ActiveRecord::Base
  attr_accessible :bio, :lastname, :name, :skill, :voicepart
end
