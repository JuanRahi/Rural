import buildURL from '../../../utils/queryString';

const getColumns = (prop) => {
  return [
    { prop: 'id', header: '#', url: '/sale/:id' },
    { prop: 'seller', header: 'Seller' },
    { prop: 'buyer', header: 'Buyer' },
    { prop: 'date', header: 'Date' },
    { prop: 'count', header: 'Count' },
    { prop: 'totalPrice', header: 'Total Price' },
    { prop: 'totalPriceAfterTax', header: 'Total Price After Tax' },
  ];
}

const requestSalesList = 'REQUEST_SALES_LIST';
const receiveSalesList = 'RECEIVE_SALES_LIST';
const defaultFilters = { sellers: [1, 2], buyers: [6, 1008], dateFrom: '2014-12-01', dateTo: '2019-12-31' };
const initialState = { data: [], filters: defaultFilters, isLoading: false, getColumns };

export const actionCreators = {
  fetchData: (filters) => async (dispatch) => {

    dispatch({ type: requestSalesList, filters });

    const params = filters || defaultFilters;
    const url = buildURL(`api/Deals`, params);
    const response = await fetch(url);
    const data = await response.json();

    dispatch({ type: receiveSalesList, data });
  }
};

export const reducer = (state, action) => {
  state = state || initialState;

  if (action.type === requestSalesList) {
    return {
      ...state,
      filters: action.filters || defaultFilters,
      isLoading: true
    };
  }

  if (action.type === receiveSalesList) {
    return {
      ...state,
      data: action.data,
      isLoading: false
    };
  }

  return state;
};
