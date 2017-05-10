class Meeting < ActiveRecord::Base
    has_many :attendances
    has_many :members, through: :attendances

    validates :in_session, presence: true 
    validates :in_session, inclusion: { in: %w(true recess false),
        message: "%{value} must be string 'true', 'false', or 'recess'" }
    validates :date, uniqueness: true

    scope :active, -> { where(in_session: 'true')}

end
