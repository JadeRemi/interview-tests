var Node = require('./LinkedList.js');

function testAppend() {
  var n = new Node(1);
  n.append(2);
  n.append(3);
  console.log('' + n);
}

testAppend();
