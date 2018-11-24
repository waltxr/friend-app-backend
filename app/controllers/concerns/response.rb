module Response

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def json_response_index(object, status = :ok)
      json = []
      object.each do |obj|
        json << {
          type: obj.class.name,
          obj: obj,
          reporter: obj.reporter,
          receiver: obj.receiver
        }
      end
      render json: json, status: status
  end

  def json_response_file_action(object, status = :ok)
    render json:
        [
          'response' => [
            object: object,
            action: Action.find_by(actionable_id: object.id),
            reporter: object.reporter,
            receiver: object.receiver
          ],
        ],
        status: status
  end
  
end
