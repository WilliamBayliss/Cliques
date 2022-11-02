class MembershipsController < ApplicationController
  def new
    @membership = Membership.new
  end

  def create
    @membership = current_user.memberships.build(membership_params)
    respond_to do |format|
      if @membership.save
        format.html { redirect_to clique_url(membership_params(:clique_id)), notice: "Request sent." }
        format.json { render :show, status: :created, location: @membership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  def accept
    @membership = Membership.find(params[:membership_id])
    @membership.accepted = true
    respond_to do |format|
      if @membership.save
        format.html { redirect_to clique_requests_url(@membership.clique), notice: "Membership approved." }
        format.json { render :show, status: :created, location: @clique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def membership_params
    params.require(:membership).permit(:clique_id)
  end

end