pragma solidity ^0.4.8;

contract Contributor {
    enum ContributorType { author, reviewer, author_reviewer, other }
    
    // Maps user Ethereum addresses to ORCIDs
    mapping (address => uint32) ORCID;
    // Maps user Ethereum addresses to their IPFS profiles
    mapping (address => string) contributorIpfsHash;
    // Maps user Ethereum addresses to contributors' different types
    mapping (address => UserType) ContributorType;
    
    function UpdateORCID(uint32 id) {
        ORCID[msg.sender] = id;
    }
    
    function GetORCID(address userAddress) constant returns (uint32) {
        return ORCID[userAddress];
    }
    
    function UpdateContributorIpfs(string ipfsProfileHash) {
        contributorIpfsHash[msg.sender] = ipfsProfileHash;
    } 
    
    function GetContributorIpfs(address userAddress) constant returns (string) {
        return contributorIpfsHash[userAddress];
    }
    
    function updateContributorType(ContributorType newType) {
        ContributorType[msg.sender] = newType;
    }
    
    function GetContributorType(address userAddress) constant returns (ContributorType) {
        return ContributorType[userAddress];
    }
}
