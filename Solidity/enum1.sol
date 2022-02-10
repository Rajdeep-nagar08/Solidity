pragma solidity 0.5.1;

contract enumSolidity  {

   enum stateCar {Wating,Ready,Stop}
    
   stateCar public currState;

   constructor() public {
       currState=stateCar.Wating;
   }
   
    function activate() public{
        currState=stateCar.Ready;
    }

    function stopCar() public{
        currState=stateCar.Stop;
    }

    function isActive() public view returns(bool){
        return currState==stateCar.Ready;
    }
}

