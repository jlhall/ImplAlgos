class Queue {
    constructor () {
        this._storage = {}
        this._head = 0
        this._tail = 0
    }
    enqueue (val) {
        this._storage[this._tail++] = val
        return this.count()
    }
    dequeue () {
        let result = this._storage[this._head]
        delete this._storage[this._head]
        if (this._head < this._tail) { this.head++ }
        return result
    }
    count () {
        return this._tail - this._head
    }
    peek () {
        return this._storage[this._head]
    }
}

module.exports = Queue
