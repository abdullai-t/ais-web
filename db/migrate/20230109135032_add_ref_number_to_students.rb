class AddRefNumberToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :ref_number, :string
  end
end
