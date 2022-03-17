pragma solidity ^0.4.18;
contract marketplace{
  address public seller;
  
  modifier onlySeller(){
    require(
      msg.sender == seller,
      "Only seller can put an item up for sale.",
    );
    _;
}

function listItem() public view onlySeller{
  //...
}
}