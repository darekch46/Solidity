//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

    contract SendMessage {

        string message;

        function Message (string memory _message) public {
            message = _message;
             }  

             function Read() public view returns(string memory) {
                 return message;

             }
    }  