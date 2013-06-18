class StudentsController < ApplicationController

  def index
    @students = Student.search(params[:search])
  end

  def show
    @student = Student.find(params[:id])
  end

end