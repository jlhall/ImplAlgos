var Stack = require('./stack')

describe('Stack()', function() {
  it('initializes with a capacity', function() {
    var stack = new Stack(2)
    expect(stack._capacity).toEqual(2)
  })
  it('has a push function', function() {
    var stack = new Stack(2)
    expect(stack.push('s')).toEqual(stack._storage)
  })
  it('throws an error when pushing while already at capacity', function() {
      var stack = new Stack(1)
      stack.push('s')
      let f = function () { return stack.push('s') }
      expect(f).toThrowError('Max capacity already reached. Remove an element before adding a new one.')
  })
  it('has a pop function', function() {
    var stack = new Stack(2)
    stack.push('s')
    expect(stack.pop()).toEqual('s')
  })
  it('has a peek function', function() {
    var stack = new Stack(2)
    stack.push('s')
    expect(stack.peek()).toEqual('s')
  })
})

