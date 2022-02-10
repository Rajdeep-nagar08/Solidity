pragma solidity 0.5.1;

contract myContract {
    
    struct person {
        string FirstNam;
        string LastName;

    }

     person[] public people; //array that stores peoples first and last name
    
     int public count=0;

     function addPerson(string memory FN,string memory LN) public{
         people.push(person(FN,LN));
         count++;   // give us howb many peoples added to array
     }
}

/*  ARRRAY=>
Rajdeep Nagar
Rajdeep nagar
MOHIT NAGAR
*/
