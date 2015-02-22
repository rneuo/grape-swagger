require 'grape'

module API
  class Root < Grape::API
    default_format :json

    mount API::Users => '/users'

    add_swagger_documentation(
      base_path: "/",
      hide_documentation_path: true
    )
  end
end

