class PublicationsController < ApplicationController
  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @publications = Publication.all
    respond_with(@publications)
  end

  def show
    respond_with(@publication)
  end

  def new
    @publication = Publication.new
    respond_with(@publication)
  end

  def edit
  end

  def create
    @publication = Publication.new(publication_params)
    flash[:notice] = 'Publication was successfully created.' if @publication.save
    respond_with(@publication)
  end

  def update
    flash[:notice] = 'Publication was successfully updated.' if @publication.update(publication_params)
    respond_with(@publication)
  end

  def destroy
    @publication.destroy
    respond_with(@publication)
  end

  private
    def set_publication
      @publication = Publication.find(params[:id])
    end

    def publication_params
      params.require(:publication).permit(:title, :pubmed_id, :impact_factor, :date_of_print, author_ids: [])
    end
end
