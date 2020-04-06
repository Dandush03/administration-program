class OrgBranchesController < ApplicationController
  before_action :set_org_branch, only: %i[show edit update destroy]

  # GET /org_branches
  # GET /org_branches.json
  def index
    @org_branches = OrgBranch.all
  end

  # GET /org_branches/1
  # GET /org_branches/1.json
  def show; end

  # GET /org_branches/new
  def new
    @org_branch = OrgBranch.new
  end

  # GET /org_branches/1/edit
  def edit; end

  # POST /org_branches
  # POST /org_branches.json
  def create
    @org_branch = OrgBranch.new(org_branch_params)

    respond_to do |format|
      if @org_branch.save
        format.html { redirect_to @org_branch, notice: 'Org branch was successfully created.' }
        format.json { render :show, status: :created, location: @org_branch }
      else
        format.html { render :new }
        format.json { render json: @org_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /org_branches/1
  # PATCH/PUT /org_branches/1.json
  def update
    respond_to do |format|
      if @org_branch.update(org_branch_params)
        format.html { redirect_to @org_branch, notice: 'Org branch was successfully updated.' }
        format.json { render :show, status: :ok, location: @org_branch }
      else
        format.html { render :edit }
        format.json { render json: @org_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_branches/1
  # DELETE /org_branches/1.json
  def destroy
    @org_branch.destroy
    respond_to do |format|
      format.html { redirect_to org_branches_url, notice: 'Org branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_org_branch
    @org_branch = OrgBranch.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def org_branch_params
    params.require(:org_branch).permit(:name, :country, :state, :addres, :clients_id)
  end
end
