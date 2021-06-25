class Node {
  constructor(value) {
    this.value = value;
    this.next = null;
  }
  append(value) {
    var node = this;
    while (node.next) {
      node = node.next;
    }
    node.next = new Node(value);
  }
  toString() {
    var arr = [];
    var node = this;
    while (node) {
      arr.push(node.value);
      node = node.next;
    }
    return arr.toString();
  }

};

module.exports = Node;
