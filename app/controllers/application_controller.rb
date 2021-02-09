class ApplicationController < ActionController::API
  def all_data
    render json: {
      "houses": House.all.as_json,
      "users": User.all.as_json,
      "viewings": Viewing.all.as_json
    }
  end
end
