class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end


	def create

		# render plain: params[:article].inspect

		@article = Article.new(article_params_allow_inheritance_class)

		# @article.save
		# redirect_to @article

		if @article.save
			redirect_to @article
		else
			render 'new'
		end

	end


	def edit

		@article = Article.find(params[:id])

	end


	def update

		@article = Article.find(params[:id])

		if @article.update(article_params)
			# redirect_to @article
			redirect_to root_path
		else
			render 'edit'
		end

	end


	def show

		@article = Article.find(params[:id])

	end

	def destroy

		@article = Article.find(params[:id])
		@article.destroy

		redirect_to root_path

	end

	#methods private and protected
	private
	def article_params_allow_class
		params.require(:article).permit(:title, :text)
	end

	protected
	def article_params_allow_inheritance_class
		params.require(:article).permit(:title, :text)
	end

	private
	def article_params
		params.require(:article).permit(:title, :text)
	end

end
