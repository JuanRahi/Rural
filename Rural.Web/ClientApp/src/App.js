import React from 'react';
import { Route } from 'react-router';
import Layout from './components/Layout';
import Home from './components/Home';
import Bovines from './components/bovines/list';
import Deals from './components/deals/list';
import Buy from './components/deals/buys';
import Sale from './components/deals/sales';
import { buy, sale } from './store/selectors';
import { actionCreators as saleActionCreators } from './components/deals/sales/Sale.store';
import { actionCreators as buyActionCreators } from './components/deals/buys/Buy.store';

export default () => (
  <Layout>
    <Route exact path='/' component={Home} />
    <Route path='/bovines' component={Bovines} />
    <Route path='/deals' component={Deals} />
    <Route path='/buys/:id' render={(props) => <Buy {...props} actions={buyActionCreators} selector={buy} />} />
    <Route path='/sales/:id' render={(props) => <Sale {...props} actions={saleActionCreators} selector={sale} />} />
  </Layout>
);
