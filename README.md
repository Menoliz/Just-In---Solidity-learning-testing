# gitTesting
Solidity first tut

    pragma solidity ^0.4.0;

    contract Dog{
    
    string name;
    int age;
    
    function getName() view returns (string){
        return name;
    }
    function getAge() view returns (int){
        return age;
    }
    
    function setName(string _setName){
        name = _setName;
        
    }
    function setAge(int _setAge){
        age = _setAge;
        
    }
    
}
