class Api::RecipesController < ApplicationController
  before_action :authenticate_user, only: [:create, :update]
  
  def index
    search_term = params[:search]
    @recipes = Recipe.all

    if search_term
      @recipes = @recipes.where("title iLIKE ? OR ingredients iLIKE ?", "%#{ search_term }%", "%#{ search_term }%")
    end

    @recipes = @recipes.order(id: :asc)

    render 'index.json.jb'
  end

  def create
    @recipe = Recipe.new(
                         user_id: current_user.id,
                         title: params[:title],
                         ingredients: params[:ingredients],
                         directions: params[:directions],
                         prep_time: params[:prep_time],
                         image_url: params[:image_url]
                        )
    if @recipe.save
      render "show.json.jb"
    else
      render json: {errors: @recipe.errors.messages}, status: :unprocessable_entity
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.title = params[:title] || @recipe.title
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.image_url = params[:image_url] || @recipe.image_url

    @recipe.save
    render 'show.json.jb'
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: {message: "Recipe successfully destroyed"}
  end
end
