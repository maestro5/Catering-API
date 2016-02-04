require "grape"

module API
  module Version1
    class Sessions < ::Grape::API
      version 'v1', using: :path

      resource :sessions do
        desc 'Get auth token'
        params do 
          requires :email,    type: String, desc: 'Email address'
          requires :password, type: String, desc: 'Password'
        end

        get '/' do
          _user = Person.where(email: params[:email]).first

          if _user && _user.valid_password?(params[:password])
            _user.generate_token!
            { token: _user.authentication_token }
          else
            error!('Unauthoraized.', 401)
          end
        end

        desc 'Remove auth token'
        delete '/' do
          authenticate_by_token!
          current_user.try :destroy_token!
          { result: 'Success!' }
        end
      end

    end
  end    
end