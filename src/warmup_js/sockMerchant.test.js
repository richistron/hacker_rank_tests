const sockMerchant = require('./sockMerchant');

describe('sockMerchant', () => {
    const parseArr = str => str.split(' ').map(v => parseInt(v));

    it('3 socks', () => {
        expect(sockMerchant(9, parseArr( '10 20 20 10 10 30 50 10 20' ))).toBe(3);
    });

    it('4 socks', () => {
        expect(sockMerchant(9, parseArr( '1 1 3 1 2 1 3 3 3 3' ))).toBe(4);
    });
});
