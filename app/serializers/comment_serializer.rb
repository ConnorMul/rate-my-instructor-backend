class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :agree, :instructor_id, :user_id
  has_one :user
  has_one :instructor
end
