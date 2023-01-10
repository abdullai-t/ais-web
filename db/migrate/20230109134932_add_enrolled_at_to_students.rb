class AddEnrolledAtToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :enrolled_at, :date
  end
end
