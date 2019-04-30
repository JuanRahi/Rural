import React, { Component } from 'react';
import Select from 'react-select';
import PropTypes from 'prop-types';
import { FormGroup, Label } from 'reactstrap';

class Dropdown extends Component {

    componentDidMount() {
        this.props.fetchData();
    }

    render() {
        const { data, value, label, handleChange, isMulti } = this.props;
        const selectedOptions = data.filter(x => value.includes(x.value));
        return (
            <FormGroup>
                <Label for={label}>{label}</Label>
                <Select
                    options={data}
                    value={selectedOptions}
                    onChange={handleChange}
                    isMulti={isMulti}>
                </Select>
            </FormGroup>
        );
    }
}

Dropdown.propTypes = {
    fetchData: PropTypes.func.isRequired,
    isLoading: PropTypes.bool.isRequired,
    isMulti: PropTypes.bool.isRequired,
    data: PropTypes.array.isRequired,
    value: PropTypes.array.isRequired,
    label: PropTypes.string.isRequired,
    handleChange: PropTypes.func.isRequired,
};

export default Dropdown;