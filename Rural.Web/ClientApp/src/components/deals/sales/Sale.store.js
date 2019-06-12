import buildURL from '../../../utils/queryString';

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

const requestSaleDetails = 'REQUEST_SALE_DETAILS';
const receiveSaleDetails = 'RECEIVE_SALE_DETAILS';
const initialState = { data: { bovines: [], investment: 0, income: 0, balance: 0 }, isLoading: false, getColumns };

export const actionCreators = {
    fetchData: (filters) => async (dispatch) => {

        dispatch({ type: requestSaleDetails, filters });

        const params = filters;
        const url = buildURL(`api/Sales/${params.id}`);
        const response = await fetch(url);
        const data = await response.json();

        dispatch({ type: receiveSaleDetails, data });
    }
};

export const reducer = (state, action) => {
    state = state || initialState;

    if (action.type === requestSaleDetails) {
        return {
            ...state,
            isLoading: true
        };
    }

    if (action.type === receiveSaleDetails) {
        return {
            ...state,
            data: action.data,
            isLoading: false
        };
    }

    return state;
};
