class ApiController < ApplicationController
  def get_monument
    monument = Monument.find_by(name: api_params[:name])
      if monument.present?
        render :status=>201,
            json: {
              status:201,
              name: monument.name,
              locality: monument.locality,
              description: monument.description,
              image: monument.image,
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

  def get_monuments_by_locality
    monuments = Monument.where(locality: api_params[:locality])
      if monuments.present?
        render :status=>201,
            json: {
              status:201,
              monuments: monuments.collect(&:name).join(", ")
            }
      else
        render :status=>201,
          json: {
            status:401,
            text: "brak zabytkow dla tej lokalizacji "
          }
      end         
  end
  private
  def api_params
    params.permit(:name, :locality)
  end
end
