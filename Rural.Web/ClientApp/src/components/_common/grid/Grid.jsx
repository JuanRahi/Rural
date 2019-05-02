import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { Table } from 'reactstrap';
import Row from './row'
import Header from './header';

class Grid extends Component {

    componentDidMount() {
        const { fetchData, params } = this.props;
        fetchData(params);
    }

    render() {
        const { data, isLoading, getColumns } = this.props;

        if (isLoading)
            return null;

        if (data.length === 0)
            return (<div>No data</div>);

        const columns = getColumns();
        const header = <Header {... { columns }} />;

        const rows = data.map((item) =>
            (<Row key={item.id} {...{ item, columns }} />));

        return (
            <React.Fragment>
                <Table responsive>
                    <thead>
                        {header}
                    </thead>
                    <tbody>
                        {rows}
                    </tbody>
                </Table>
                <div>
                    Total rows: {data.length}
                </div>
            </React.Fragment>
        );
    }
}

Grid.propTypes = {
    fetchData: PropTypes.func.isRequired,
    params: PropTypes.object,
    getColumns: PropTypes.func.isRequired,
    data: PropTypes.array.isRequired,
    isLoading: PropTypes.bool.isRequired
}

export default Grid;