class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        students_grades = students.sort_by {|student| student.grade}.reverse
        render json: students_grades
    end

    def highest_grade
        students = Student.all
        highest_grade = students.sort_by {|student| student.grade}.reverse.first
        render json: highest_grade
    end



end
