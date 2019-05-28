import React, { Component } from 'react';
import BovinesTable from './table';
import Filter from './filters';

class Bovines extends Component {

    render() {
        return (
            <div>
                <Filter />
                <BovinesTable />
            </div>
        );
    }
}
export default Bovines;