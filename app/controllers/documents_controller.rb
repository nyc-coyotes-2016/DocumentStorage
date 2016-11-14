class DocumentsController < ApplicationController
  before_action :find_doc, only: [:show, :edit]

  def index
    @documents = Document.all
  end


  def new
    @document = Document.new
    # get '/documents/new'
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to root_path
    else
      @errors = @document.errors.full_messages
    end
  end

  def show
    # @document = Document.find(params[:id])
    # get '/documents/:id'
  end

  def edit
    # @document = Document.find(params[:id])
    # get '/documents/:id/edit'
  end

  def update
    # put '/documents/:id'
  end

  def destroy
    # delete '/documents/:id'
  end


  private
    def find_doc
      @document= Document.find(params[:id])
    end

      def document_params
        params.require(:document).permit(:title, :content)
      end
end
