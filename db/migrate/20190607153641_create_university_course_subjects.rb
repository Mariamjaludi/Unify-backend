class CreateUniversityCourseSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :university_course_subjects do |t|
      t.integer :subject_id
      t.string :grade
      t.integer :university_course_id

      t.timestamps
    end
  end
end
