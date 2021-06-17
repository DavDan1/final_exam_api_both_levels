class Article < ApplicationRecord
  validates_presence_of :title, :body
  # validates_presence_of :comment 
end
