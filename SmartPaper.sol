pragma solidity ^0.4.8;

contract SmartPaper {

    function GetVersions() constant returns (uint32) {
        return Versions[];
    }
    
    function GetCurrentPublishedVersion() constant returns (string) {
        return ;
    }
    
    function GetCurrentWorkingVersion() constant returns () {
        return ;
    }
}
