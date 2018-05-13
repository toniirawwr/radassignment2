class New < Item
    belongs_to :user
    
    validates :type,    presence: true
    validates :title,   presence: true, 
                        length: {in: 10..200},
                        format: {with: /^[a-zA-Z0-9\s]*.{10,200}$/, :multiline => true, message: "can include white spaces, new lines and tabs, Maximum of 200 characters"}
    validates :websource, :allow_blank => true, format: {with: /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/, :multiline => true, message: "Only Full URLS Allowed! Must contain either http/https"}
    validates :news_id, presence: true, 
                        uniqueness: true
    validates :user,    presence: true
    validates :user_id, presence: true
end