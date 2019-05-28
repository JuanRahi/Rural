import React, { Component } from 'react';
import Filter from './filters';
import GridTable from './table';

class Deals extends Component {

    render() {
        return (
            <div>
                <Filter />
                <GridTable />
            </div>
        );
    }
}

export default Deals;