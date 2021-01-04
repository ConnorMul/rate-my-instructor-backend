class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :agree
  has_one :user
  has_one :instructor
end
