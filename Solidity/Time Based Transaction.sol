pragma solidity 0.5.1;

contract myContract {
    
    struct person {
        uint id;
        string FirstNam;
        string LastName;

    }

    mapping(uint => person) mapPeople;  //mapping
    
    uint256 public count=0;


     //transaction done according too time
    uint256 openingTime=1644172090;         // epic time (in seconds)
    modifier onlyWhileOpen(){     
     require(block.timestamp >=openingTime);  
     // addperson will only works if current time >= opening time
     _;   // move ahead
    }

    function addperson(
        string memory FName,
        string memory LName)
     public 
     onlyWhileOpen      
     {  //only owner can add persons 
        increasecount();  // function call to increase count value
       mapPeople[count]=person(count,FName,LName);

       }

    function increasecount() internal{
        count++;
    }

}
