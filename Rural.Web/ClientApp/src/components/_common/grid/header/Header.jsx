import React from 'react';

const Header = ({ columns }) => {    
    const rowData = columns.map(column => <th key={column.prop}>{column.header}</th>);
    return(<tr>
            {rowData}
        </tr>);
};

export default Header;