import Debug "mo:base/Debug";

actor DBank {
  var currentValue : Nat = 300;
  //use := to reassign values
  //using debug to display non text in print
  let id = 123242556;

  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdraw(amount : Nat) {
    let tempValue : Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("You cannot withdraw an amount larger than the current total");
    };
  };
};
