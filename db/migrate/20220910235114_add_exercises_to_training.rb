class AddExercisesToTraining < ActiveRecord::Migration[7.0]
  def change
    add_reference :trainings, :exercises
  end
end
