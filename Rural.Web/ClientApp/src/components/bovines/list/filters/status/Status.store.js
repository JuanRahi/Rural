const requestStatus = 'REQUEST_STATUS';
const receiveStatus = 'RECEIVE_STATUS';
const initialState = { data: [], isLoading: false };
const BASE_URL = '';

export const actionCreators = {
    fetchData: () => async (dispatch) => {

        dispatch({ type: requestStatus });

        const url = BASE_URL + `api/Status`;
        const response = await fetch(url);
        const data = await response.json();

        dispatch({ type: receiveStatus, data });
    }
};

export const reducer = (state, action) => {
    state = state || initialState;

    if (action.type === requestStatus) {
        return {
            ...state,
            isLoading: true
        };
    }

    if (action.type === receiveStatus) {
        return {
            ...state,
            data: action.data,
            isLoading: false
        };
    }

    return state;
};
