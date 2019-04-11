const requestOwners = 'REQUEST_OWNERS';
const receiveOwners = 'RECEIVE_OWNERS';
const initialState = { data: [], isLoading: false };
const BASE_URL = '';

export const actionCreators = {
    fetchData: () => async (dispatch) => {

        dispatch({ type: requestOwners });

        const url = BASE_URL + `api/Owners`;
        const response = await fetch(url);
        const data = await response.json();

        dispatch({ type: receiveOwners, data });
    }
};

export const reducer = (state, action) => {
    state = state || initialState;

    if (action.type === requestOwners) {
        return {
            ...state,
            isLoading: true
        };
    }

    if (action.type === receiveOwners) {
        return {
            ...state,
            data: action.data,
            isLoading: false
        };
    }

    return state;
};
