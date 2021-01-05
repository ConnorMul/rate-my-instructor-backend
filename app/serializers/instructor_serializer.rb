class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :name, :years_teaching, :bio, :school, :likes, :image
  
  has_many :comments
end
