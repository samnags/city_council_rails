class MembersController < ApplicationController

    def index
        members = Member.all
        render json: members
    end

    def show
        member = Member.find_by(district: params[:id])
        render json: {
            firstName: member.first_name,
            lastName: member.last_name,
            party: member.party,
            district: member.district,
            missed: member.missed,
            attended: member.meetings_attended_count,
            total: member.should_have_attended_count
        }
    end
    
    
end
