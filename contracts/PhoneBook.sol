//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

    contract PhoneBook{

        People[] people;

        struct People {
            uint256 telNumber;
            string fullName;
            string email;
}

    function addPreson (uint256 _telNumber, string memory _email, string memory _fullName) public {
    people.push(People(_telNumber, _fullName, _email));
    
   }

    function checkPerson() public view returns(uint256) {
        return ;
    }


}

    
