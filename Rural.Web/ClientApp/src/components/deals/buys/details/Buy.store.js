import buildURL from '../../../../utils/queryString';

const getColumns = (prop) => {
    return [
        { prop: 'bovineId', header: '#' },
        { prop: 'number', header: 'Number' },
        { prop: 'status', header: 'Status' },
        { prop: 'category', header: 'Category' },
        { prop: 'entryDate', header: 'Entry Date' },
        { prop: 'saleDate', header: 'Sale Date' },
        { prop: 'yearsInField', header: 'Time (Years)' },
        { prop: 'monthsInField', header: 'Time (Months)' },
        { prop: 'buyPrice', header: 'Buy' },
        { prop: 'salePrice', header: 'Sale' },
        { prop: 'profit', header: 'Profit' },
    ];
}

const requestBuyDetails = 'REQUEST_BUY_DETAILS';
const receiveBuyDetails = 'RECEIVE_BUY_DETAILS';
const initialState = { data: [], isLoading: false, getColumns };

export const actionCreators = {
    fetchData: (filters) => async (dispatch) => {

        dispatch({ type: requestBuyDetails, filters });

        const params = filters;
        const url = buildURL(`api/Buys/${params.id}`);
        const response = await fetch(url);
        const data = await response.json();

        dispatch({ type: receiveBuyDetails, data });
    }
};

export const reducer = (state, action) => {
    state = state || initialState;

    if (action.type === requestBuyDetails) {
        return {
            ...state,
            isLoading: true
        };
    }

    if (action.type === receiveBuyDetails) {
        return {
            ...state,
            data: action.data,
            isLoading: false
        };
    }

    return state;
};
