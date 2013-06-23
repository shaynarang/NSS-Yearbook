class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.search(params[:search]).sort
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

end