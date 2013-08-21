class CompanyController < ApplicationController

  before_filter :authenticate_user!

  load_and_authorize_resource

	def index
		@companies = Company.order("lower(company_name) ASC")
    render :index
  end

  def create 
    @new_company = Company.new
    @new_company.company_name                 = params[:company_name]
    @new_company.ticker                  			= params[:ticker]
    @new_company.url                					= params[:url]
    @new_company.exchange_id                  = params[:exchange_id]

    if @new_company.save
      flash[:success] = "Company successfully added"      
      redirect_to company_index_path
    else
      flash[:error] = "| "
      @new_company.errors.messages.to_a.each do | company | 
        company_string = company[1][0] + " | "
        flash.now[:error] += company_string
      end    
      @exchanges = Exchange.order("exchange_name ASC")
  		render :new
    end
  end

  def new
  	@exchanges = Exchange.order("exchange_name ASC")
  	render :new
  end

  def edit
    @show_company = Company.where({ :id => params[:id] }).first
    @exchanges = Exchange.order("exchange_name ASC")
    render :edit
  end

  def show
  end

  def update
    @update_company = Company.where({ :id => params[:id] }).first   
    @update_company.company_name         = params[:company_name]
    @update_company.ticker               = params[:ticker]
    @update_company.url                  = params[:url]
    @update_company.exchange_id          = params[:exchange_id]

    if @update_company.save
      flash[:success] = "Company sucessfully updated"
      redirect_to company_edit_path
    else
      flash[:error] = "| "
      @update_company.errors.messages.to_a.each do | company | 
        company_string = company[1][0] + " | "
        flash.now[:error] += company_string
      end
      @show_company = @update_company
      @exchanges = Exchange.order("exchange_name ASC")  
      render :edit
    end
  end

  def destroy
    if delete_bonds = Bond.where({ :company_id => params[:id] })
      for delete_bond in delete_bonds
        delete_bond.destroy
      end
    end

    delete_company = Company.where({ :id => params[:id] }).first
    delete_company.destroy
    
    flash[:success] = "Company and assciated bond(s) was/were successfully deleted"  
    redirect_to company_index_path
  end
end
