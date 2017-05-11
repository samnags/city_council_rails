import React, { Component } from 'react';
import { connect } from 'react-redux'

class Member extends Component { 
    render() {        
        const { member } = this.props
        if(!member) {
            return <div>Select a member</div>
        }
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
}

function mapStateToProps(state) {    
    return {
        member: state.activeMember
    }
}

export default connect(mapStateToProps)(Member);