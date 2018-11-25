module Response

  def json_response(object, status = :ok)
      render json: object, status: status
  end

  def json_response_cateogry(object, status = :ok)
      render json: object, :include => [:reporter, :receiver], status: status
  end

  def json_response_user(object, status = :ok)
      render json: object, :include => [
        {:filed_grievances => {:include => :receiver}},
        {:received_grievances => {:include => :reporter}},
        {:awarded_valid_points => {:include => :reporter}},
        {:received_valid_points => {:include => :receiver}}
        ], status: status
  end

end
