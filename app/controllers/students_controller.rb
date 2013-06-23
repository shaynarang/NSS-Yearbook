class StudentsController < ApplicationController

  def index
    @students = Student.search(params[:search]).sort
  end

  def show
    @student = Student.find(params[:id])
  end

end