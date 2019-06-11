class StudentSubjectsSerializer < ActiveModel::Serializer
  attributes :subject, :grade
  belongs_to :student
  belongs_to :subject

end
