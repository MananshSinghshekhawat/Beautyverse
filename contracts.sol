// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingWithRewards {
    // Mapping to keep track of votes for each candidate
    mapping(address => uint256) public votes;
    // Mapping to track if an address has already voted
    mapping(address => bool) public hasVoted;
    // Mapping to track token rewards
    mapping(address => uint256) public rewards;
    
    // Event emitted when a vote is cast
    event VoteCast(address voter, address candidate);
    // Event emitted when a reward is given
    event RewardGiven(address voter, uint256 tokens);

    // Function to vote for a candidate
    function vote(address _candidate) public {
        require(!hasVoted[msg.sender], "You have already voted.");
        require(_candidate != address(0), "Invalid candidate address.");
        
        votes[_candidate] += 1; // Increment candidate's vote count
        hasVoted[msg.sender] = true; // Mark voter as having voted
        rewards[msg.sender] += 1; // Reward voter with 1 token
        
        emit VoteCast(msg.sender, _candidate);
        emit RewardGiven(msg.sender, 1);
    }

    // Function to check how many tokens a voter has earned
    function checkRewards(address _voter) public view returns (uint256) {
        return rewards[_voter];
    }

    // Function to check total votes for a candidate
    function getVotes(address _candidate) public view returns (uint256) {
        return votes[_candidate];
    }
}
