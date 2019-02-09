const getColumns = (prop) => {
    return [ 
      { prop: 'id', header: '#' },
      { prop: 'seller', header: 'Seller' },
      { prop: 'buyer', header: 'Buyer' },
      { prop: 'date', header: 'Date' }      
     ];
  }

const requestDealsList = 'REQUEST_DEALS_LIST';
const receiveDealsList = 'RECEIVE_DEALS_LIST';
const initialState = { data: [], isLoading: false, getColumns };
const BASE_URL = '';

export const actionCreators = {
    fetchData: () => async (dispatch) => {

    dispatch({ type: requestDealsList });

    const url = BASE_URL + `api/Deals`;
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
