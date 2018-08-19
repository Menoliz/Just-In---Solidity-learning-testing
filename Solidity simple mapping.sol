pragma solidity^0.4.0;

contract DogContract{
    
    struct dogStruct{
        string name;
        uint age;
        
    }
    
    dogStruct[] dogs;
    
    mapping(address => uint) ownerToDog;
    
    function addDog(string _name, uint _age){
        address owner = msg.sender;
        uint id = dogs.push(dogStruct(_name, _age));
        ownerToDog[owner] = id;
    }
    function getDogName() returns (string){
        address owner = msg.sender;
        uint id = ownerToDog[owner];
        return dogs[id-1].name;
    }
}
    
