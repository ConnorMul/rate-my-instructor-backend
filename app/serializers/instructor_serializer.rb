class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :name, :years_teaching, :bio, :school, :likes
  
  has_many :comments
end
