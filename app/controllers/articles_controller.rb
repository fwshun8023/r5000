class ArticlesController < BaseController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.order("id desc")
  end

  def show; end

  def new
    @article = current_user.articles.new
  end

  def edit; end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save
      redirect_to article_path(@article), notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article), notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    def set_article
      @article = Article.find_by(id: params[:id])
      return redirect_to articles_path, notice: 'Article was not found' unless @article
    end

    def article_params
      params.require(:r5000_model_article).permit(:title, :content)
    end
end
