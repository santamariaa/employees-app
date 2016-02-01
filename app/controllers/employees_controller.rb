class EmployeesController < ApplicationController
    def index
        @employees = Employee.all 
    end
   
    def new 
    end

    def create
        @employee = Employee.create({first_name: params[:first_name],
                                    last_name: params[:last_name],
                                    email: params[:email],
                                    job_title: params[:job_title],
                                    salary: params[:salary],
                                    phone_number: params[:phone_number],
                                    gender: params[:gender]

            })
        
        flash[:success] = "New Recipe Created"
        redirect_to "/"

    end

    def show
        @employee = Employee.find_by(id: params[:id])   
    end

    def edit
        @employee = Employee.find_by(id: params[:id])
    end

    def update
          @employee = Employee.find_by(id: params[:id])

          @employee.update({first_name: params[:first_name],
                                    last_name: params[:last_name],
                                    email: params[:email],
                                    job_title: params[:job_title],
                                    salary: params[:salary],
                                    phone_number: params[:phone_number],
                                    gender: params[:gender]

            })
    
        flash[:success] = "Recipe Updated"
        redirect_to "/employees/#{@employee.id}"
    end 

    def destroy
        flash[:warning] = "Recipe destroyed"
        redirect_to "/"

    end

end
