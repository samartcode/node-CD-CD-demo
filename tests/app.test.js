
const { suma } = require('../app');

test('suma(122,78) deberia retornar 200', () => {
    expect(suma(122,78)).toBe(200);
})