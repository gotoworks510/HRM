class SchoolsController < ApplicationController
	def index
		@schools = School.all
	end
	def show
		@school = School.find(params[:id])
		@persons = @school.persons
	end
	def new
		@schools = School.new
	end
	def create
		@schools = School.new(school_params)
		if @schools.save
			redirect_to '/schools'
		else
			render 'new'
		end
	end
	def destroy
		@school = School.find(params[:id])
		@school.destroy
		redirect_to '/schools'
	end
	def edit
		@school = School.find(params[:id])
	end
	def update
		@school = School.find(params[:id])
		if @school.update_attributes(school_params)
			redirect_to(:action => 'show', :id => @school.id)
		else
			render 'edit'
		end
	end
	private
	def school_params
		params.require(:school).permit(:name, :detail, :scale)
	end
end
