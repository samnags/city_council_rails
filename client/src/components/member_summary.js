import React from 'react';

const MemberSummary = (props) => {    
    const { member } = props      
    return (                        
        <div>
            <div>
                Name: {`${member.first_name} ${member.last_name}`} <br />
                District: {member.district} <br />
                Party: {member.party} <br />
            </div>
                <h4>Number of meetings missed: {member.missed}</h4>
                <h4>Number of meetings attended: {member.meetings_attended_count}</h4>
                <h4>Total number of meetings: {member.should_have_attended_count}</h4>
        </div>
        );
}
    
module.exports = MemberSummary