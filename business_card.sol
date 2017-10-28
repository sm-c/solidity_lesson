pragma solidity ^0.4.16;
contract BusinessCard {
    string name;
    uint age;
    function getName() constant returns (string) {
        return name;
    }
    function setName(string newName) {
        name = newName;
    }
    function getAge() constant returns (uint) {
        return age;
    }
    function setAge(uint newAge) {
        age = newAge;
    }
}
