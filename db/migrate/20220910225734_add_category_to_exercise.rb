class AddCategoryToExercise < ActiveRecord::Migration[7.0]
  def change
    add_reference :exercises, :categories
  end
end
