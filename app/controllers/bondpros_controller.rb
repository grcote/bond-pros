require 'rss'
class BondprosController < ApplicationController
  
  def index
	   begin
		   @bond_rss = RSS::Parser.parse(
		   	open('http://www.economist.com/topics/bond-markets/index.xml').read, false
		   	).items[0...10]
		  rescue
		  	@bond_rss = nil
		  end

  	@bonds = Bond.search(params[:search]).sort_by {|e| e[:cusip].downcase}
    render :index
  end

  def create
    @new_subscriber = Subscriber.new
    @new_subscriber.name                    = params[:name]
    @new_subscriber.email                   = params[:email]
    
    if @new_subscriber.save
      flash[:success] = "Signed up successfully"
      SubscriberMailer.signup_confirmation(@new_subscriber).deliver
      redirect_to :controller => 'bondpros', :action => 'index'
    else
      error_message = @new_subscriber.errors.messages.flatten
      flash[:error] = "| " + error_message[1][0] + " | "   
      redirect_to :controller => 'bondpros', :action => 'index'
    end
  end

  def update
  end

  def destroy
  end
end