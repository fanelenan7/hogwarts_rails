class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(:id)
  end

  def create
    @student = Student.create!(student_params)

  redirect_to "/students/#{@student.id}"
  end

  private
    def student_params
      params.require(:student).permit(:name, :img_url, :house)
  end
end
