module Response

  def json_response(object, status = :ok)
      render json: object, :include => [:reporter, :receiver], status: status
  end

end
