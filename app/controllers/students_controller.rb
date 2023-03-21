class StudentsController < ApplicationController
  def index
    students = Student.all 
    render json: students
  end 

  def grades 
    students = Student.all
    grades = students.order(grade: :desc)
    render json: grades
  end 

  def highest_grade
    students = Student.all
    first = students.order(grade: :desc).first
    render json: first
  end 
end
