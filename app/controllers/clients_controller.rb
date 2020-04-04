class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    get_org
    @clients = get_org.clients.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    get_org
  end

  # GET /clients/new
  def new
    get_org
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
    get_org
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = get_org.clients.new(client_params)
    get_org
    respond_to do |format|
      if @client.save
        format.html { redirect_to organization_clients_path(@organization), notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    get_org
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to organization_clients_path(@organization), notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    get_org
    @client.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      att_create = %i[name display_name email currency user_id]
      params.require(:client).permit(att_create)
    end

    # Get the organization id by selected one (NEED IMPROVMENTS)
    def get_org
      @organization = Organization.first
    end
end
