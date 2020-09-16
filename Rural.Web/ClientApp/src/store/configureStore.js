import { applyMiddleware, combineReducers, compose, createStore } from 'redux';
import thunk from 'redux-thunk';
import { routerReducer, routerMiddleware } from 'react-router-redux';
import * as BovinesList from '../components/bovines/list/Bovines.store';
import * as BuysList from '../components/deals/list/Buys.store';
import * as SalesList from '../components/deals/list/Sales.store';
import * as Owners from '../components/shared/owners/Owners.store';
import * as Sex from '../components/bovines/list/filters/sex/Sex.store';
import * as Status from '../components/bovines/list/filters/status/Status.store';
import * as Buy from '../components/deals/buys/Buy.store';
import * as Sale from '../components/deals/sales/Sale.store';
import * as DealSummary from '../components/deals/details/summary/Summary.store';

export default function configureStore(history, initialState) {
  const reducers = {
    bovinesList: BovinesList.reducer,
    buysList: BuysList.reducer,
    salesList: SalesList.reducer,
    buyDetails: Buy.reducer,
    saleDetails: Sale.reducer,
    dealSummary: DealSummary.reducer,
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
