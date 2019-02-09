import React from 'react';
import { Route } from 'react-router';
import Layout from './components/Layout';
import Home from './components/Home';
import Bovines from './components/bovines/list';
import Deals from './components/deals/list';

export default () => (
  <Layout>
    <Route exact path='/' component={Home} />
    <Route path='/bovines' component={Bovines} />
    <Route path='/deals' component={Deals} />
  </Layout>
);
