import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { Table } from 'react-bootstrap';
import Row from './row'
import Header from './header';

class Grid extends Component {

    componentDidMount(){
        this.props.fetchData();
    }

    render() {        
        const { data, isLoading, getColumns } = this.props;
        
        if(isLoading)
            return null;

        if(data.length === 0)
            return (<div>No data</div>);

        const columns = getColumns();            
        const header = <Header { ... { columns } } />; 
        
        const rows = data.map((item) => 
            (<Row key={item.id} { ...{ item, columns } } />));

        return (
            <Table responsive>
                <thead>
                    { header }
                </thead>
                <tbody>
                    { rows }
                </tbody>
            </Table>
        );
    }
}

Grid.propTypes = {
    fetchData: PropTypes.func.isRequired,
    getColumns: PropTypes.func.isRequired,
    data: PropTypes.array.isRequired,
    isLoading: PropTypes.bool.isRequired
}

export default Grid;