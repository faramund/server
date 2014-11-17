class ApiController < ApplicationController
  def get_monument
    monument = Monument.find_by(name: params[:name])
      if monument.present?
        render :status=>201,
            json: {
              status:201,
              name: monument.name,
              locality: monument.locality,
              description: monument.description,
              latitude: monument.latitude,
              longitude: monument.longitude
            }
      else
        render :status=>201,
          json: {
            status:401,
            text: "brak takiego zabytku "
          }
      end         
  end
end
