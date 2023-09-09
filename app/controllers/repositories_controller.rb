class RepositoriesController < ApplicationController
  def index
    @repositories = Repository.all
  end

  def show
    @markdown = Redcarpet::Markdown.new(Redcarpet::CustomRender)

    @repository = Repository.find(params[:id])
  end
end
