module DeviseHelper
  
  def devise_error_messages!

 	  if resource.errors.full_messages.any?
    	messages = resource.errors.full_messages
    	flash[:error] = "| "

    	messages.each do |m|
    		error_msg = m + " | "
    		flash.now[:error] += error_msg
    	end
    end
  end
end