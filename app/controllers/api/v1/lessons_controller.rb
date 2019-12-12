class Api::V1::LessonsController < ApplicationController
    before_action :set_lesson, only: [:show, :update, :destroy]

    def index
      @lessons = Lesson.all
  
      render json: @lessons
    end
  
    def show
      render json: @lesson
    end
  
    def create
      @lesson = Lesson.new(lesson_params)
      if @lesson.save
        
        render json: @lesson, status: :created
      else
        render json: @lesson.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /lessons/1
    def update
      counter = 0

      while counter < params[:lesson][:users].length 
        for user in params[:lesson][:users]
          newUser = User.find(user[:id])
          @lesson.users.push(newUser) unless @lesson.users.include?(newUser)
          counter = counter + 1
        end
      end

      if @lesson.update(lesson_params)
        render json: @lesson
      else
        render json: @lesson.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /lessons/1
    def destroy
      lesson =  Lesson.find(params[:id])
      
      lesson.destroy ? (render json: lesson.id) : (render json: {status: 500, message: 'Lesson cannot be deleted'})
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_lesson
        @lesson = Lesson.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def lesson_params
        params.require(:lesson).permit(:title, :description, :date, :start_time, :end_time)
      end
end
