actor Calc {

  var cell : Int = 0;

  // Add.
  public func add(n : Int) : async Int {
    cell += n;
    return cell;
  };

  // Subtract.
  public func sub(n : Int) : async Int {
    cell -= n;
    return cell;
  };

  // Multiply.
  public func mul(n : Int) : async Int {
    cell *= n;
    return cell;
  };

  // Divide.
  public func div(n : Int) : async ?Int {
    if (n == 0) {
      // 'null' encodes the division by zero error.
      return null;
    } else {
      cell /= n;
      return ?cell;
    };
  };

  // Clear the calculator and reset its cell to zero.
  public func clearall() : async () {
    cell := 0;
  };

  // Get the current value of the cell.
  public query func get() : async Int {
    return cell;
  };

  // Set the value of the cell to a new value.
  public func set(n : Int) : async () {
    cell := n;
  };

  // Add and return a new value without updating the cell.
  public func addn(n : Int) : async Int {
    let result = cell + n;
    return result;
  };

  // Subtract and return a new value without updating the cell.
  public func subn(n : Int) : async Int {
    let result = cell - n;
    return result;
  };

  // Multiply and return a new value without updating the cell.
  public func muln(n : Int) : async Int {
    let result = cell * n;
    return result;
  };

  // Divide and return a new value without updating the cell.
  public func divn(n : Int) : async ?Int {
    if (n == 0) {
      return null;
    } else {
      let result = cell / n;
      return ?result;
    };
  };

  // Check if the cell is equal to a given value.
  public query func isEqual(n : Int) : async Bool {
    return cell == n;
  };

  // Check if the cell is greater than a given value.
  public query func isGreater(n : Int) : async Bool {
    return cell > n;
  };

  // Check if the cell is less than a given value.
  public query func isLess(n : Int) : async Bool {
    return cell < n;
  };

  // Increment the cell by a given value.
  public func incBy(n : Int) : async () {
    cell += n;
  };

  // Decrement the cell by a given value.
  public func decBy(n : Int) : async () {
    cell -= n;
  };

  // Get the absolute value of the cell.
  public query func abs() : async Int {
    if (cell < 0) {
      return -cell;
    } else {
      return cell;
    };
  };

  // Get the maximum value between the cell and a given value.
  public query func max(n : Int) : async Int {
    if (cell > n) {
      return cell;
    } else {
      return n;
    };
  };

  // Get the minimum value between the cell and a given value.
  public query func min(n : Int) : async Int {
    if (cell < n) {
      return cell;
    } else {
      return n;
    };
  };

  // Get the remainder of the division of the cell by a given value.
  public func mod(n : Int) : async ?Int {
    if (n == 0) {
      return null;
    } else {
      let result = cell % n;
      return ?result;
    };
  };
};