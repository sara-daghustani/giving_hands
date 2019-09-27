class OrganizationProfilesController < ApplicationController
  before_action :set_organization_profile, only: [:show, :edit, :update, :destroy]

  # GET /organization_profiles
  # GET /organization_profiles.json
  def index
    @organization_profiles = OrganizationProfile.all
  end

  # GET /organization_profiles/1
  # GET /organization_profiles/1.json
  def show
  end

  # GET /organization_profiles/new
  def new
    @organization_profile = OrganizationProfile.new
  end

  # GET /organization_profiles/1/edit
  def edit
  end

  # POST /organization_profiles
  # POST /organization_profiles.json
  def create
    @organization_profile = OrganizationProfile.new(organization_profile_params)

    respond_to do |format|
      if @organization_profile.save
        format.html { redirect_to @organization_profile, notice: 'Organization profile was successfully created.' }
        format.json { render :show, status: :created, location: @organization_profile }
      else
        format.html { render :new }
        format.json { render json: @organization_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_profiles/1
  # PATCH/PUT /organization_profiles/1.json
  def update
    respond_to do |format|
      if @organization_profile.update(organization_profile_params)
        format.html { redirect_to @organization_profile, notice: 'Organization profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_profile }
      else
        format.html { render :edit }
        format.json { render json: @organization_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_profiles/1
  # DELETE /organization_profiles/1.json
  def destroy
    @organization_profile.destroy
    respond_to do |format|
      format.html { redirect_to organization_profiles_url, notice: 'Organization profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_profile
      @organization_profile = OrganizationProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_profile_params
      params.require(:organization_profile).permit(:type, :img, :address, :city, :website_link, :twitter_link, :instagram_link, :facebook_link, :snapchat_link, :whatsup_link, :linkedin_link, :phone)
    end
end
