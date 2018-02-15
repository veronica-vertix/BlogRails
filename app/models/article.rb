class Article < ApplicationRecord

    # Has Many relation with comments 
    has_many :comments

    #  DB attributes validation
    validates :title, presence: true, length:{minimum:5}
end
