class CollegesController < ApplicationController
  def index
	@colleges = College.all
  end

  def import
	College.import(params[:file])
    	redirect_to root_url, notice: "Colleges imported."
  end


  
  # GET /colleges/1
  # GET /colleges/1.json

  def show
    @college = College.find(params[:u_id])

    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @college }
    end
  end

  def search      
    if params[:q]
      @colleges = College.find(:all, :conditions => ['inst_name LIKE ?', "%#{params[:q]}%"])
    else
      @colleges = College.find(:all)
    end
  end

end
