class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :name, :years_teaching, :bio, :school, :likes
end
