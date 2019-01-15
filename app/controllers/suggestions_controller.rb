class SuggestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @suggestions = Suggestion.all
  end

  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.save

    redirect_to authenticated_root_path
  end

  def show
  end

  def suggestion_params
    params.require(:suggestion).permit(:title, :content, :major, :user, :major_campus, :major_id)
  end
end
