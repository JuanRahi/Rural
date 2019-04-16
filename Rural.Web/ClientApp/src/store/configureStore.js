import { applyMiddleware, combineReducers, compose, createStore } from 'redux';
import thunk from 'redux-thunk';
import { routerReducer, routerMiddleware } from 'react-router-redux';
import * as BovinesList from '../components/bovines/list/Bovines.store';
import * as DealsList from '../components/deals/list/Deals.store';
import * as Owners from '../components/shared/owners/Owners.store';
import * as Sex from '../components/bovines/list/filters/sex/Sex.store';
import * as Status from '../components/bovines/list/filters/status/Status.store';

export default function configureStore(history, initialState) {
  const reducers = {
    bovinesList: BovinesList.reducer,
    dealsList: DealsList.reducer,
    owners: Owners.reducer,
    sex: Sex.reducer,
    status: Status.reducer
  };

  const middleware = [
    thunk,
    routerMiddleware(history)
  ];

  // In development, use the browser's Redux dev tools extension if installed
  const enhancers = [];
  const isDevelopment = process.env.NODE_ENV === 'development';
  if (isDevelopment && typeof window !== 'undefined' && window.devToolsExtension) {
    enhancers.push(window.devToolsExtension());
  }

  const rootReducer = combineReducers({
    ...reducers,
    routing: routerReducer
  });

  return createStore(
    rootReducer,
    initialState,
    compose(applyMiddleware(...middleware), ...enhancers)
  );
}
