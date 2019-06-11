class AddGradeValToUniversityCourseSubjects < ActiveRecord::Migration[5.2]
  def change
    add_column :university_course_subjects, :grade_val, :integer
  end
end
