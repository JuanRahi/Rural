import React, { Component } from 'react';
import { Table } from 'react-bootstrap';
import Bovine from './list-item'

class Bovines extends Component {

    componentDidMount(){
        this.props.requestBovinesList();
    }

    render() {        
        const { bovines, loading } = this.props;
        
        if(loading)
            return null;

        const rows = bovines.map((bovine) => 
            (<Bovine key={bovine.id} bovine={bovine} />));

        return (
            <Table responsive>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Number</th>
                        <th>Category</th>
                        <th>Age</th>
                        <th>Owner Name</th>
                        <th>Owner Number</th>
                    </tr>
                </thead>
                <tbody>
                    { rows }
                </tbody>
            </Table>
        );
    }
}

export default Bovines;