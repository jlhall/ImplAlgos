var Stack = require('./stack')

describe('Stack()', function() {
  it('initializes with a size', function() {
    var stack = new Stack(2)
    expect(stack.size()).toEqual(2)
  })
  it('has a push function', function() {
    var stack = new Stack(2)
    expect(stack.push('s')).toEqual(stack)
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

