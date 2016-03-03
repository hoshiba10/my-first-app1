class Memo < ActiveRecord::Base
    validates :word, presence: true
end
