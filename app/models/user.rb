class User < ApplicationRecord
    validates :login, :email,  presence: true 
    before_validation :login_has_value
    private 
    def  login_has_value
        if login.nil?
        self.login =email unless email.black?
            
        end
    end
end
