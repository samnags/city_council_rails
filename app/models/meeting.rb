class Meeting < ActiveRecord::Base
    has_many :attendances
    has_many :members, through: :attendances
end
