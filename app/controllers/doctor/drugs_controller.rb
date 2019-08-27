class Doctor::DrugsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:api]
  def api
    @results = JSON.parse(RestClient.get "https://www.open-medicaments.fr/api/v1/medicaments?query=#{params[:query]}")
  end
end
