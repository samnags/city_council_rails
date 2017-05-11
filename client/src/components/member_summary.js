import React from 'react';

const MemberSummary = (props) => {    
    const { member } = props        
    return (                        
        <div>
            <div>
                Name: {`${member.firstName} ${member.lastName}`} <br />
                District: {member.district} <br />
                Party: {member.party} <br />
            </div>
                <h4>Number of meetings missed: {member.missed}</h4>
                <h4>Number of meetings attended: {member.attended}</h4>
                <h4>Total number of meetings: {member.total}</h4>
        </div>
        );
}
    
module.exports = MemberSummary