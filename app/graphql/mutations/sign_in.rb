module Mutations
  class SignIn < BaseMutation
    field :token, String
    field :error, String

    argument :credentials, Types::CredentialsInputType, required: false

    description 'Sign in'
    def resolve(credentials:)
      response = { token: nil, error: nil }
      # basic validation
      if credentials
        user = User.find_by email: credentials[:email]
        if user && user.authenticate(credentials.password)
          # use Ruby on Rails - ActiveSupport::MessageEncryptor, to build a token
          crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
          token = crypt.encrypt_and_sign("user-id:#{user.id}")

          # save session token
          context[:session][:token] = token

          return response.merge({ token: })
        end
      end

      response.merge({ error: 'not find the user' })
    end
  end
end
