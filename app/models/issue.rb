class Issue < ActiveRecord::Base
  attr_accessible :description, :severity, :title
end
