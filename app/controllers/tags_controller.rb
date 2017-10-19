class TagsController < ApplicationController

	

	def show
  		@tags = Tag.find(params[:id])
	end
	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "Tag '#{@tag.name}' Deleted!"
		
		redirect_to action: 'index'
	end

end
