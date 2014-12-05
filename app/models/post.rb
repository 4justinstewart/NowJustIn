class Post < ActiveRecord::Base
  has_one :author
  has_many :comments

  delegate :name, to: :author, prefix: true, allow_nil: true
end
