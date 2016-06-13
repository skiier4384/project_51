class Post < ActiveRecord::Base
  
  default_scope { order('created_at DESC') }
  
  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  
end
