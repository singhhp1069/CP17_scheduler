# frozen_string_literal: true

require './app/v1/controllers/schedule_controller'

module Api
  class ApiV1 < Sinatra::Base
    get '/' do
      'Hello World'
    end

    get '/documentation' do
      send_file './app/v1/api.v1.html'
    end

    use V1::Controllers::ScheduleController
  end
end
