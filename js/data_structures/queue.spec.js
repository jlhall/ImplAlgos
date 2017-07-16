var Queue = require('./queue')

describe('Queue()', function() {
  it('has a enqueue function', function() {
    var queue = new Queue
    expect(queue.enqueue('s')).toEqual(1)
  })
  it('has a dequeue function', function() {
    var queue = new Queue
    queue.enqueue('a')
    queue.enqueue('b')
    expect(queue.dequeue()).toEqual('a')
  })
  it('has a count function', function() {
    var queue = new Queue
    queue.enqueue('s')
    expect(queue.count()).toEqual(1)
  })
  it('has a peek function', function() {
    var queue = new Queue
    queue.enqueue('a')
    queue.enqueue('b')
    expect(queue.peek()).toEqual('a')
  })
})


