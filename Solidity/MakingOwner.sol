contract myContract {
    
    struct person {
        uint id;
        string FirstNam;
        string LastName;

    }

    mapping(uint => person) mapPeople;  //mapping
    
    uint256 public count=0;

    address owner; // making owner (address=> data type in solidity) ,so  owner = address of owner

    modifier onlyowner(){
        require(msg.sender ==owner);   //msg.sender in solidity tell us the address of account who calls the function
        _;
   
    }


    constructor() public {   // setting the default owner
        owner=msg.sender;
    }


    /*
    Note: Owner account= account using which you deploy the transaction

    if u try to add personn using other account it will not added and shows error

    */
    

    function addperson(
        string memory FName,
        string memory LName)
     public 
     onlyowner
     {  //only owner can add persons 
        increasecount();  // function call to increase count value
       mapPeople[count]=person(count,FName,LName);

       }

    function increasecount() internal{
        count++;
    }

}
