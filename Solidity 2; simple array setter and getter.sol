pragma solidity^0.4.0;

contract DogContract{
    
    struct dogStruct{
        string name;
        uint age;
    }
    dogStruct[] dogs;
    
    mapping(address => uint) ownerToDog;
    
    function addDog(string _name, uint _age){
        //dogStruct newDog = dogStruct(_name, _age);
        //dogs.push(newDog);
        dogs.push(dogStruct(_name, _age)); //or it can be shortened to this
    }
    function getDogName(uint _id) returns (string){
        return dogs[_id].name; //or dogs[_id].age
    }
}
    
