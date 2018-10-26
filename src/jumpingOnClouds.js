
class Node {
  constructor(data, next) {
   this.data = data;
   this.next = next;
  }

  set_next(node) {
    this.next = node;
  }
}

class List {
  constructor() {
    this.head = null;
  }

  add(data) {
    if (!this.head) {
      this.head = new Node(data);
    }
    else {
      const last_node = this.tail();
      last_node.set_next(new Node(data));
    }
  }

  tail() {
    let current_node = this.head;
    while (current_node.next) {
      current_node = current_node.next;
    }
    return current_node;
  }
}


const jumpingOnClouds = arr => {
  const list = new List();
  arr.forEach(item => list.add(parseInt(item)));
  let jumps = 0;
  let current_node = list.head;
  while (current_node.next) {
    if (current_node.next && current_node.next.next && current_node.next.next.data === 0) {
      jumps++;
      current_node = current_node.next.next;
    }
    else {
      jumps++;
      current_node = current_node.next;
    }
  }
  return jumps;
};

module.exports = jumpingOnClouds;
