require "grape"

module API
  module Version1
    class Sprints < ::Grape::API
      version 'v1', using: :path

      resource :sprints do
        desc "Returns sorted sprints"
        get "/" do
          Sprint.order(id: :asc).all
        end
      end
    end
  end    
end