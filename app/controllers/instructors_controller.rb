class InstructorsController < ApplicationController

    def index 
        instructors = Instructor.all
        render json: instructors, except:[:updated_at, :created_at]
    end 

    def show
        instructor = Instructor.new.find_by(id: params[:id])
        render json: instructor, except:[:updated_at, :created_at]
    end 



end
