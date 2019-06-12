import React, { Component } from 'react';
import { TabContent, TabPane, Nav, NavItem, NavLink } from 'reactstrap';
import Summary from './summary';
import BovinesTable from './table';

const SUMMARY = 'summary';
const BOVINES = 'bovines'

class Deal extends Component {
    constructor(props) {
        super(props);
        this.state = {
            key: BOVINES
        };
    }

    render() {
        const params = this.props.match.params;
        const { selector, actions } = this.props;
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
                        <NavLink onClick={key => this.setState({ key: BOVINES })} className={key === BOVINES ? 'active' : ''}>
                            Bovines
                        </NavLink>
                    </NavItem>
                </Nav>
                <TabContent activeTab={this.state.key}>
                    <TabPane tabId={SUMMARY} title="Summary">
                        <Summary  {... { params }} />
                    </TabPane>
                    <TabPane tabId={BOVINES} title="Bovines">
                        <BovinesTable {... { params, selector, actions }} />
                    </TabPane>
                </TabContent>
            </React.Fragment>
        );
    }
}

export default Deal;