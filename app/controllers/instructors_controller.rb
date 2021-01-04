class InstructorsController < ApplicationController

    def index 
        instructors = Instructor.all
        render json: instructors, except:[:updated_at, :created_at]
    end 

    def show
        instructor = Instructor.find_by(id: params[:id])
        render json: instructor, except:[:updated_at, :created_at]
    end 

    def edit 
        instructor = Instructor.find_by(id: params[:id])
        #render json: instructor, except:[:updated_at, :created_at]
    end 

    def update
        instructor = Instructor.find_by(id: params[:id])
        instructor.update(instructor_params)
        render json: instructor, except:[:updated_at, :created_at]
    end

    def create
       instructor = Instructor.create(instructor_params) 
       render json: instructor
    end

    private

    def instructor_params
        params.permit(:name, :years_teaching, :bio, :school, :likes) 
    end

end
