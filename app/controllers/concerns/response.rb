module Response

  def json_response(object, status = :ok)
      render json: object, status: status
  end

  def json_response_comment(object, status = :ok)
    render json: object, :include => [:user]
  end

  def json_response_cateogry(object, status = :ok)
      render json: object, :include => [:reporter, :receivers, {:comments => {:include => :user}}], status: status
  end

  def json_response_user(object, status = :ok)
      render json: object, :include => [
        {:filed_grievances => {:include => [:receivers, {:comments => {:include => :user}}]}},
        {:received_grievances => {:include => [:receivers, {:comments => {:include => :user}}]}},
        {:awarded_valid_points => {:include => :reporter}},
        {:received_valid_points => {:include => :receiver}},
        {:awarded_lols => {:include => :reporter}},
        {:received_lols => {:include => :receiver}},
        {:reported_proclamations => {:include => :reporter}},
        {:received_proclamations => {:include => :receiver}},
        {:reported_quotes => {:include => :reporter}},
        {:received_quotes => {:include => :receiver}},
        {:cited_sources => {:include => :reporter}},
        {:received_sources => {:include => :receivers}}
        ], status: status
  end

end
