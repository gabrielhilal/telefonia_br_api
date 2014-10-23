class MainController < ApplicationController

  def index
    tel = TelBr.new(params[:tel])
    if tel.valid?
      result = {
        ddd:        tel.ddd,
        number:     tel.number,
        state:      tel.state,
        region:     tel.region,
        stripped:   tel.stripped,
        formatted:  tel.formatted
      }
    else
      result = { error: tel.error }
    end
    render json: result
  end

end