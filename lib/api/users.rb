module API
  class Users < Grape::API
    # if use JSONP then you cooment out below
    # use Rack::JSONP

    desc 'get all users'
    get "all" do
      present User.all, with: API::Entities::User
    end

  end
end

