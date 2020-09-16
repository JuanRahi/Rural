import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { ListGroup, ListGroupItem } from 'reactstrap';

class Summary extends Component {

    componentDidMount() {
        const { fetchData, params } = this.props;
        fetchData(params);
    }

    render() {
        const { data, isLoading } = this.props;

        if (isLoading)
            return null;

        const keys = Object.keys(data);
        if (!keys)
            return null;

        const rows = keys.map((item) =>
            (<ListGroupItem>
                <div>
                    <span>{item}: </span>
                    {data[item]}
                </div>
            </ListGroupItem>));

        return (
            <div>
                <ListGroup>
                    {rows}
                </ListGroup>
            </div>
        );
    }
}

Summary.propTypes = {
    fetchData: PropTypes.func.isRequired,
    params: PropTypes.object,
    data: PropTypes.object.isRequired,
    isLoading: PropTypes.bool.isRequired
}

export default Summary;