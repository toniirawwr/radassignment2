class Comment < Item
  belongs_to :user

  validates :content, presence: { message: "of Comment can't be blank" }, 
                      length: {in: 3..999},
                      format: {with: /^[a-zA-Z ]*.{3,999}$/ ,:multiline => true, message: "excludes white spaces, new lines and tabs. Must be less than 1000 characters"}
  
  validates :news_id, presence: true
  
  validates :user,    presence: true
  validates :user_id, presence: true
end
