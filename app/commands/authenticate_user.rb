#The command takes the user's e-mail and password then 
#returns the user, if the credentials match.
Class AuthenticateUser
    prepend SimpleCommand

    def initialize(email, password)
        @email = email
        @password = password
    end

    def call
        JsonWebToken.encode(user_id: user.id) if user
    end

private

    attr_accessor :email, :password

    def user
        user = User.find_by_email(email)
        return user if user && user.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
        nil
    end
end