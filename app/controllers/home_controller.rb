class HomeController < ApplicationController

  def index
    @students = Student.all
    @instructors = Instructor.all
  end

  def show
    @student = Student.find(params[:id])
    @instructor = Instructor.find(params[:id])
  end

end