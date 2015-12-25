class ArticlesController < ApplicationController

	def new
	end

	def create
		# render plain: params[:article].inspect

		@article = Article.new(article_params_allow_inheritance_class)
		@article.save
		redirect_to @article

	end

	def show
		@article = Article.find(params[:id])
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

end
