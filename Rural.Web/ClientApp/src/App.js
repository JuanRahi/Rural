import React from 'react';
import { Route } from 'react-router';
import Layout from './components/Layout';
import Home from './components/Home';
import Bovines from './components/bovines/list';
import Deals from './components/deals/list';
import Buy from './components/deals/buys';
import Sale from './components/deals/sales';
import { buy, sale, buys, sales } from './store/selectors';
import { actionCreators as saleActionCreators } from './components/deals/sales/Sale.store';
import { actionCreators as buyActionCreators } from './components/deals/buys/Buy.store';
import { actionCreators as buysActionCreators } from './components/deals/list/Buys.store';
import { actionCreators as salesActionCreators } from './components/deals/list/Sales.store';

export default () => (
  <Layout>
    <Route exact path='/' component={Home} />
    <Route path='/bovines' component={Bovines} />
    <Route path='/buys' render={(props) => <Deals {...props} actions={buysActionCreators} selector={buys} />} />
    <Route path='/sales' render={(props) => <Deals {...props} actions={salesActionCreators} selector={sales} />} />
    <Route path='/buy/:id' render={(props) => <Buy {...props} actions={buyActionCreators} selector={buy} />} />
    <Route path='/sale/:id' render={(props) => <Sale {...props} actions={saleActionCreators} selector={sale} />} />
  </Layout>
);
