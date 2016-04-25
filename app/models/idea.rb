class Idea < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
    validates :platform, presence: true
    validates :description, presence: true
    validates :help_needed, presence: true
    
end
