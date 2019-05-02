import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Grid from '../../../_common/grid';
import { TabContent, TabPane, Nav, NavItem, NavLink } from 'reactstrap';
const SUMMARY = 'summary';
const BOVINES = 'bovines'

class Buy extends Component {
    constructor(props){
        super(props);
        this.state = {
            key: BOVINES
        };
    }
    render() {
        const params = this.props.match.params;
        const { key } = this.state;
        return (
            <React.Fragment>
                <Nav tabs>
                    <NavItem>
                        <NavLink onClick={key => this.setState({ key: SUMMARY })} className={key === SUMMARY ? 'active' : ''}>
                            Summary
                        </NavLink>
                    </NavItem>
                    <NavItem>
                        <NavLink onClick={key => this.setState({ key: BOVINES})} className={key === BOVINES ? 'active' : ''}>
                            Bovines
                        </NavLink>
                    </NavItem>
                </Nav>
                <TabContent activeTab={this.state.key}>
                    <TabPane tabId={SUMMARY} title="Summary">
                        <div>Summary Data</div>
                    </TabPane>
                    <TabPane tabId={BOVINES} title="Bovines">
                        <Grid {...this.props} params={params} />
                    </TabPane>
                </TabContent>
            </React.Fragment>
        );
    }
}

Buy.propTypes = {
    fetchData: PropTypes.func.isRequired,
    getColumns: PropTypes.func.isRequired,
    data: PropTypes.array.isRequired,
    isLoading: PropTypes.bool.isRequired
};

export default Buy;