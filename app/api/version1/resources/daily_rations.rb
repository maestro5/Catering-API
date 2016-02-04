require "grape"

module API
  module Version1
    class DailyRations < ::Grape::API
      version 'v1', using: :path

      resource :daily_rations do
        desc "Returns sorted daily rations"
        get "/" do
          #authenticate_by_token!
          _actual_sprint = Sprint.where(state: 1).first
          _actual_sprint.daily_rations.where(person_id: 1).all
        end
      end
    end
  end    
end