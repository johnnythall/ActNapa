class Actor < ActiveRecord::Base
  belongs_to :sex
  belongs_to :ethnicity
  
end
