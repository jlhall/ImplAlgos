var Queue = require('./queue')

describe('Queue()', function() {
  it('initializes with a size', function() {
    var queue = new Queue(2)
    expect(queue.size()).toEqual(2)
  })
  it('has a enqueue function', function() {
    var queue = new Queue(2)
    expect(queue.enqueue('s')).toEqual(queue)
  })
  it('has a dequeue function', function() {
    var queue = new Queue(2)
    queue.enqueue('s')
    expect(queue.dequeue()).toEqual('s')
  })
  it('has a peek function', function() {
    var queue = new Queue(2)
    queue.enqueue('a')
    queue.enqueue('b')
    expect(queue.peek()).toEqual('a')
  })
})


