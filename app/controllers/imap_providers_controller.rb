class ImapProvidersController < ApplicationController
  before_action :set_imap_provider, only: [:show, :edit, :update, :destroy]

  # GET /imap_providers
  # GET /imap_providers.json
  def index
    @imap_providers = ImapProvider.all
  end

  # GET /imap_providers/1
  # GET /imap_providers/1.json
  def show
  end

  # GET /imap_providers/new
  def new
    @imap_provider = ImapProvider.new
  end

  # GET /imap_providers/1/edit
  def edit
  end

  # POST /imap_providers
  # POST /imap_providers.json
  def create
    @imap_provider = ImapProvider.new(imap_provider_params)

    respond_to do |format|
      if @imap_provider.save
        format.html { redirect_to @imap_provider, notice: 'Imap provider was successfully created.' }
        format.json { render :show, status: :created, location: @imap_provider }
      else
        format.html { render :new }
        format.json { render json: @imap_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imap_providers/1
  # PATCH/PUT /imap_providers/1.json
  def update
    respond_to do |format|
      if @imap_provider.update(imap_provider_params)
        format.html { redirect_to @imap_provider, notice: 'Imap provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @imap_provider }
      else
        format.html { render :edit }
        format.json { render json: @imap_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imap_providers/1
  # DELETE /imap_providers/1.json
  def destroy
    @imap_provider.destroy
    respond_to do |format|
      format.html { redirect_to imap_providers_url, notice: 'Imap provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imap_provider
      @imap_provider = ImapProvider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imap_provider_params
      params.require(:imap_provider).permit(:name, :server, :port, :ssl)
    end
end
