class SchoolsController < ApplicationController
	def index
		@schools = School.all
	end
	def show
		@school = School.find(params[:id])
		@persons = @school.persons
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
