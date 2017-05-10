export function fetchMembers() {
    return async function(dispatch) {
        const url = `/api/members`
        const response = await fetch(url);
        const members = await response.json()
        dispatch({type: 'FETCH_MEMBERS', payload: members })
        }
}


export function selectMember(member) {        
    return {        
        type: 'MEMBER_SELECTED',
        payload: member
    }
    
}