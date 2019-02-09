const getColumns = (prop) => {
  return [ 
    { prop: 'id', header: '#' },
    { prop: 'number', header: 'Number' },
    { prop: 'sex', header: 'Sex' },
    { prop: 'category', header: 'Category' },
    { prop: 'years', header: 'Age (Years)' },
    { prop: 'months', header: 'Age (Months)' },
    { prop: 'status', header: 'Status' },
    { prop: 'entryDate', header: 'Entry Date' },
    { prop: 'ownerName', header: 'Owner Name' },
    { prop: 'ownerNumber', header: 'Owner Number' }
   ];
}

const requestBovinesList = 'REQUEST_BOVINES_LIST';
const receiveBovinesList = 'RECEIVE_BOVINES_LIST';
const initialState = { data: [], isLoading: false, getColumns };
const BASE_URL = '';

export const actionCreators = {
    fetchData: () => async (dispatch) => {

    dispatch({ type: requestBovinesList });

    const url = BASE_URL + `api/Bovines`;
    const response = await fetch(url);
    const data = await response.json();

    dispatch({ type: receiveBovinesList, data });
  }
};

export const reducer = (state, action) => {
  state = state || initialState;

  if (action.type === requestBovinesList) {
    return {
      ...state,
      isLoading: true
    };
  }

  if (action.type === receiveBovinesList) {
    return {
      ...state,
      data: action.data,
      isLoading: false
    };
  }

  return state;
};
