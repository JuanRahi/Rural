import buildURL from '../../../../utils/queryString';

const requestBuySummary = 'REQUEST_BUY_SUMMARY';
const receiveBuySummary = 'RECEIVE_BUY_SUMMARY';
const initialState = { data: {}, isLoading: false };

export const actionCreators = {
    fetchData: (filters) => async (dispatch) => {

        dispatch({ type: requestBuySummary, filters });

        const params = filters;
        const url = buildURL(`api/Deals/${params.id}`);
        const response = await fetch(url);
        const data = await response.json();

        dispatch({ type: receiveBuySummary, data });
    }
};

export const reducer = (state, action) => {
    state = state || initialState;

    if (action.type === requestBuySummary) {
        return {
            ...state,
            isLoading: true
        };
    }

    if (action.type === receiveBuySummary) {
        return {
            ...state,
            data: action.data,
            isLoading: false
        };
    }

    return state;
};
