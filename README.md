# Voting System with Token Rewards

This is a simple voting smart contract written in Solidity, designed to reward participants with tokens for voting. The contract is deployed on the **Edu Chain** at the following address:

**Deployed Contract Address:** `0xD4d9685A9B5fEB31D9A8062B6AF55bD89aE868B5`

## 🚀 Features

- ✅ **Simple Voting Mechanism:** Users can vote for any valid candidate address.
- 🎁 **Token Rewards:** Each voter is rewarded with 1 token for casting a valid vote.
- 🔒 **One Vote Per Address:** Prevents double voting by ensuring each address can only vote once.
- 📊 **Vote Tracking:** Allows anyone to check the total votes for a candidate.
- 💰 **Reward Tracking:** Users can check how many tokens they have earned.

## 📄 Smart Contract Functions

### `vote(address _candidate)`
Allows a user to vote for a candidate. Rewards the voter with 1 token upon successful voting.

### `checkRewards(address _voter)`
Returns the total number of reward tokens earned by a voter.

### `getVotes(address _candidate)`
Returns the total number of votes received by a candidate.

## 💻 How to Use

1. Connect your wallet to the **Edu Chain** network.
2. Interact with the contract using the deployed address.
3. Cast your vote by providing a valid candidate address.
4. Check your rewards and candidate vote counts using the available functions.

## 🛠️ Requirements

- Solidity ^0.8.0
- Edu Chain-compatible wallet (e.g., MetaMask)

## 🔗 Contract Deployment Info

- **Network:** Edu Chain
- **Deployed Address:** `0xD4d9685A9B5fEB31D9A8062B6AF55bD89aE868B5`

## 📜 License

This project is licensed under the MIT License.

---

Feel free to contribute or raise issues for improvements!

