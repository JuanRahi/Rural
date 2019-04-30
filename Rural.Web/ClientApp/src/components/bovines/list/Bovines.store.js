import buildURL from "../../../utils/queryString";

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
const defaultFilters = { owners: [1], sex: [0], status: [0] };
const initialState = { data: [], filters: defaultFilters, isLoading: false, getColumns };

export const actionCreators = {
  fetchData: (filters) => async (dispatch) => {

    dispatch({ type: requestBovinesList, filters });

    const params = filters || defaultFilters;
    const url = buildURL(`api/Bovines`, params);
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
      filters: action.filters || defaultFilters,
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
