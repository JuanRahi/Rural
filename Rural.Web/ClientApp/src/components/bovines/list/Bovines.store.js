const requestBovinesList = 'REQUEST_BOVINES_LIST';
const receiveBovinesList = 'RECEIVE_WEATHER_FORECASTS';
const initialState = { bovines: [], isLoading: false };
const BASE_URL = ''; // 'http://localhost:5000/';

export const actionCreators = {
    requestBovinesList: () => async (dispatch) => {

    dispatch({ type: requestBovinesList });

    const url = BASE_URL + `api/Bovines`;
    const response = await fetch(url);
    const bovines = await response.json();

    dispatch({ type: receiveBovinesList, bovines });
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
      bovines: action.bovines,
      isLoading: false
    };
  }

  return state;
};
