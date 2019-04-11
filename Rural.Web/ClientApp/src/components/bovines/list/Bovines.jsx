import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Grid from '../../_common/grid';
import Filter from './filters';

class Bovines extends Component {

    render() {
        return (
            <div>
                <Filter />
                <Grid {... this.props} />
            </div>
        );
    }
}

Bovines.propTypes = {
    fetchData: PropTypes.func.isRequired,
    getColumns: PropTypes.func.isRequired,
    data: PropTypes.array.isRequired,
    isLoading: PropTypes.bool.isRequired
};

export default Bovines;