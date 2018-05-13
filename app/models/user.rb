class User < ActiveRecord::Base
    before_validation :generate_lowercase_username
    
    has_many :news, class_name: 'New'
    has_many :comments, class_name: 'Comment'
    
    validates :username,    presence: true, 
                            uniqueness: {case_sensitive: false},
                            length: {in: 2..15}, 
                            format: { with: /\A[\w-]+\z/, message: "only letters, digits, dashes and underscores allowed" }
                                        
    validates :password,    presence: true, 
                            length: {minimum: 10}, 
                            format: {with: /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{10,}$/ ,:multiline => true, message: "atleast one uppercase letter, one special character, one number and one lowercase letter allowed"}
    
    has_secure_password validations: false

private
      def generate_lowercase_username
        self.username.downcase!
      end
end
