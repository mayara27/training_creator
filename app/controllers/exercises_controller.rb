class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
    @categories = Category.all
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save!
      flash[:notice] = 'Exercicio criado com sucesso!'
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def create_training

  end
  private 

  def exercise_params
    params.require(:exercise).permit(:name, :categories_id)
  end

  def training
    @exercises_array = []

  end
  
end
