const getColumns = (prop) => {
  return [
    { prop: 'id', header: '#' },
    { prop: 'seller', header: 'Seller' },
    { prop: 'buyer', header: 'Buyer' },
    { prop: 'date', header: 'Date' },
    { prop: 'totalPrice', header: 'Total Price' },
    { prop: 'totalPriceAfterTax', header: 'Total Price After Tax' },
  ];
}

const requestDealsList = 'REQUEST_DEALS_LIST';
const receiveDealsList = 'RECEIVE_DEALS_LIST';
const defaultFilters = { seller: 1, buyer: 6, dateFrom: '2019-01-01', dateTo: '2019-12-31' };
const initialState = { data: [], filters: defaultFilters, isLoading: false, getColumns };
const BASE_URL = 'https://localhost:44386/';

export const actionCreators = {
  fetchData: (filters) => async (dispatch) => {

    dispatch({ type: requestDealsList, filters });

    const params = filters || defaultFilters;

    let url = new URL(BASE_URL + `api/Deals`);
    Object.keys(params).forEach(key => url.searchParams.append(key, params[key]));

    const response = await fetch(url);
    const data = await response.json();

    dispatch({ type: receiveDealsList, data });
  }
};

export const reducer = (state, action) => {
  state = state || initialState;

  if (action.type === requestDealsList) {
    return {
      ...state,
      filters: action.filters || defaultFilters,
      isLoading: true
    };
  }

  if (action.type === receiveDealsList) {
    return {
      ...state,
      data: action.data,
      isLoading: false
    };
  }

  return state;
};
