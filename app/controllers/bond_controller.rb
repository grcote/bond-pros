class BondController < ApplicationController

  before_filter :authenticate_user!
  
  load_and_authorize_resource

  def index
    @bonds = Bond.order("lower(cusip) ASC")
    render :index
  end

  def create
    @new_bond = Bond.new
    @new_bond.cusip                   = params[:cusip]
    @new_bond.coupon                  = params[:coupon]
    @new_bond.maturity                = params[:maturity]
    @new_bond.rating                  = params[:rating]
    @new_bond.prospectus              = params[:prospectus]
    @new_bond.company_id              = params[:company_id]

    if @new_bond.save
      flash[:success] = "Bond successfully added"      
      redirect_to bond_index_path
    else
      flash[:error] = "| "
      @new_bond.errors.messages.to_a.each do | bond | 
        bond_string = bond[1][0] + " | "
        flash.now[:error] += bond_string
      end    
      @companies = Company.order("company_name ASC")
      render :new
    end
  end

  def new
    @companies = Company.order("company_name ASC")
    render :new
  end

  def edit
    @show_bond = Bond.where({ :id => params[:id] }).first
    @companies = Company.order("company_name ASC")
    render :edit
  end

  def show
  end

  def update
    @update_bond = Bond.where({ :id => params[:id] }).first   
    @update_bond.cusip               = params[:cusip]
    @update_bond.coupon              = params[:coupon]
    @update_bond.maturity            = params[:maturity]
    @update_bond.rating              = params[:rating]
    @update_bond.prospectus          = params[:prospectus]
    @update_bond.company_id          = params[:company_id]


    if @update_bond.save
      flash[:success] = "Bond sucessfully updated"
      redirect_to bond_edit_path
    else
      flash[:error] = "| "
      @update_bond.errors.messages.to_a.each do | bond | 
        bond_string = bond[1][0] + " | "
        flash.now[:error] += bond_string
      end
      @show_bond = @update_bond
      @companies = Company.order("company_name ASC")  
      render :edit
    end

  end

  def destroy
    delete_bond = Bond.where({ :id => params[:id] }).first
    delete_bond.destroy
    
    flash[:success] = "Bond was successfully deleted"  
    redirect_to bond_index_path
  end

end
