class PersonsController < ApplicationController
	def index
		@persons = Person.all
	end
	def show
		@person = Person.find(params[:id])
		@school = @person.school
	end
	def edit
		@person = Person.find(params[:id])
	end
	def update
	@person = Person.find(params[:id])
		if @person.update_attributes(person_params)
			redirect_to(:action => 'show', :id => @person.id)
		else
			render 'edit'
		end
	end
	private
		def person_params
			params.require(:person).permit(:name, :detail, :arrivalDate, :school)
		end
end
