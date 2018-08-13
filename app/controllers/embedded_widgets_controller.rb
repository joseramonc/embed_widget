class EmbeddedWidgetsController < ApplicationController

  # Needed to allow embedding js scripts
  skip_before_action :verify_authenticity_token

  before_action :allow_cors, only: [:index]

  def embed
    @widget = Widget.find_by(id: params[:id], url: params[:url])
    respond_to do |format|
      format.js { render }
    end
  end

  private

    def allow_cors
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'GET'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    end
end
