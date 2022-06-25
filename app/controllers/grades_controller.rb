class GradesController < ApplicationController

    def index
        grades = Student.all.sort_by { |stu| stu.grade  * -1 }
        render json: grades
    end
end
