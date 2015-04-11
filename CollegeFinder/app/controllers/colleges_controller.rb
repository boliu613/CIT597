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

  def advance_search   
    @colleges = College.find(:all)
    @colleges = College.order(:inst_name)
    @colleges = College.where("inst_name LIKE ?", "%#{params[:name]}%") if params[:name].present?
    if params[:state].present?
      @colleges = @colleges.where(state: params[:state][:state]) if params[:state][:state].present?
    end    

    if params[:tuition_min].present? and params[:tuition_min] != '0'      
      @colleges = @colleges.where("tuition_fees > (#{params[:tuition_min]} * 5000)") # 
    end

    if params[:tuition_max].present? and params[:tuition_max] != '0'      
      @colleges = @colleges.where("tuition_fees < (#{params[:tuition_max]} * 5000)") # 
    end

    conditions = [];
    if params[:public].present?
      conditions << "Public"
    end
    if params[:private_not_for_profit].present?
      conditions << "Private not-for-profit"
    end
    if params[:private_for_profit].present?
      conditions << "Private for-profit"
    end   
    if params[:public].present? or params[:private_not_for_profit].present? or params[:private_for_profit].present?
      puts conditions
      @colleges = @colleges.where(control: conditions)
    end

    conditions = ""
    count = 0
    if params[:rural].present?
      if count > 0
        conditions += " or urbanization LIKE '%Rural%'"
      else
        conditions += "urbanization LIKE '%Rural%'"
      end
      count += 1
    end
    if params[:suburban].present?
      if count > 0
        conditions += " or urbanization LIKE '%Suburb%'"
      else
        conditions += "urbanization LIKE '%Suburb%'"
      end
      count += 1
    end
    if params[:town].present?
      if count > 0
        conditions += " or urbanization LIKE '%Town%'"
      else
        conditions += "urbanization LIKE '%Town%'"
      end
      count += 1
    end 
    if params[:city].present?
      if count > 0
        conditions += "or urbanization LIKE '%City%'"
      else
        conditions += "urbanization LIKE '%City%'"
      end
      count += 1
    end
    if count > 0
      #@colleges = @colleges.find_by_sql("SELECT FROM WHERE " + conditions + " ORDER BY inst_name")
      @colleges = @colleges.where(conditions)
    end   
  end

end
