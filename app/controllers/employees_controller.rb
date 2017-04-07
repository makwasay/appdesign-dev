class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
    @active_employees = Employee.active.alphabetical
    @inactive_employees = Employee.inactive.alphabetical
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @assignments = @employee.assignments
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end 

  # GET /employees/1/edit
  def edit
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_index_path(@employee), notice: "Successfully created #{@employee.proper_name}."
    else
      render action: 'new'
    end
  end

  def update
    if @employee.update(employee_params)
      redirect_to employee_path(@employee), notice: "Successfully updated #{@employee.proper_name}."
    else
      render action: 'edit'
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    redirect_to employees_url, notice: "Successfully removed #{@employee.proper_name} from the AMC system."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

end