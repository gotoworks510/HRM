class PeopleController < ApplicationController
	def index
		@people = Person.all
	end
	def show
		@person = Person.find(params[:id])
		@school = @person.school
	end
	def new
		@person = Person.new
	end
	def create
		@person = Person.new(person_params)
		if @person.save
			redirect_to '/people'
		else
			render 'new'
		end
	end
	def destroy
		@person = Person.find(params[:id])
		@person.destroy
		redirect_to '/people'
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
			params.require(:person).permit(:name, :detail, :arrivalDate, :school_id)
		end
end
