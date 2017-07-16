// ES6
class Stack {
    constructor (capacity) {
        this._storage = {} 
        this._capacity = capacity
        this._count = 0
    }
    size () {
        return Object.keys(this._storage).length
    }
    push (val) {
        if (this.size() >= this._capacity) {
            throw new Error('Max capacity already reached. Remove an element before adding a new one.')
        } else {
            this._storage[this._count] = val
            this._count++
        }
        return this._storage
    }
    pop () {
        let result = this._storage[Object.keys(this._storage).length - 1]
        delete this._storage[Object.keys(this._storage).length - 1]
        this._count--
        return result
    }
    peek () {
        return this._storage[Object.keys(this._storage).length - 1]
    }
}

module.exports = Stack
// ES5
