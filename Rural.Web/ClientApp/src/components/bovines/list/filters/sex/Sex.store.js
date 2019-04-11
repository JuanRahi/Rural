const requestSex = 'REQUEST_SEX';
const receiveSex = 'RECEIVE_SEX';
const initialState = { data: [], isLoading: false };
const BASE_URL = '';

export const actionCreators = {
    fetchData: () => async (dispatch) => {

        dispatch({ type: requestSex });

        const url = BASE_URL + `api/Sex`;
        const response = await fetch(url);
        const data = await response.json();

        dispatch({ type: receiveSex, data });
    }
};

export const reducer = (state, action) => {
    state = state || initialState;

    if (action.type === requestSex) {
        return {
            ...state,
            isLoading: true
        };
    }

    if (action.type === receiveSex) {
        return {
            ...state,
            data: action.data,
            isLoading: false
        };
    }

    return state;
};
