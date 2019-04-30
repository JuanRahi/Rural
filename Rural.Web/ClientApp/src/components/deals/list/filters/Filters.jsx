import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { Form, Row, Col, FormGroup, Label, Input } from 'reactstrap';
import Owners from '../../../shared/owners';

class Filter extends Component {

    handleSellerChange = (e) => {
        const { buyers, dateFrom, dateTo } = this.props;
        const sellers = e.map(x => x.value);
        this.props.fetchData({ sellers, buyers, dateFrom, dateTo });
    }

    handleBuyerChange = (e) => {
        const { sellers, dateFrom, dateTo } = this.props;
        const buyers = e.map(x => x.value);
        this.props.fetchData({ sellers, buyers, dateFrom, dateTo });
    }

    handleDateFromChange = (e) => {
        const { sellers, buyers, dateTo } = this.props;
        const dateFrom = e.target.value;
        this.props.fetchData({ sellers, buyers, dateFrom, dateTo });
    }

    handleDateToChange = (e) => {
        const { sellers, buyers, dateFrom } = this.props;
        const dateTo = e.target.value;
        this.props.fetchData({ sellers, buyers, dateFrom, dateTo });
    }

    render() {
        const { sellers, buyers, dateFrom, dateTo } = this.props;
        return (
            <Form>
                <Row form>
                    <Col md={4}>
                        <Owners
                            label="Seller"
                            value={sellers}
                            isMulti={true}
                            handleChange={(e) => this.handleSellerChange(e)}>
                        </Owners>
                    </Col>
                    <Col md={4}>
                        <Owners
                            label="Buyer"
                            value={buyers}
                            isMulti={true}
                            handleChange={(e) => this.handleBuyerChange(e)}>
                        </Owners>
                    </Col>
                    <Col md={2}>
                        <FormGroup>
                            <Label for="dateFrom">From</Label>
                            <Input
                                type="date"
                                name="dateFrom"
                                placeholder="From"
                                value={dateFrom}
                                onChange={(e) => this.handleDateFromChange(e)}>
                            </Input>
                        </FormGroup>
                    </Col>
                    <Col md={2}>
                        <FormGroup>
                            <Label for="dateTo">To</Label>
                            <Input
                                type="date"
                                name="dateTo"
                                placeholder="To"
                                value={dateTo}
                                onChange={(e) => this.handleDateToChange(e)}>
                            </Input>
                        </FormGroup>
                    </Col>
                </Row>
            </Form>);
    }
}


Filter.propTypes = {
    fetchData: PropTypes.func.isRequired,
    sellers: PropTypes.array.isRequired,
    buyers: PropTypes.array.isRequired,
};


export default Filter;