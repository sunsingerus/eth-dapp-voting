pragma solidity ^0.4.18;

contract Voting {

	// number of votes fer candidate
	mapping (uint8 => uint8) public votes;

	// list of candidate's names
	string[] public candidates;
	
	function addCandidate(string candidate) public {
		candidates.push(candidate);
	}

	function getCandidatesNumber() view public returns(uint256) {
		return candidates.length;
	}

	function getCandidate(uint8 idx) view public returns(string) {
		return candidates[idx];
	}

	function getVotesForIndex(uint8 idx) view public returns(uint8) {
		return votes[idx];
	}

	function getVotesFor(string candidate) view public returns(uint8) {
		int8 idx = index(candidate);
		require(idx >= 0);
		return votes[uint8(idx)];
	}

	function voteForIndex(uint8 idx) public {
		votes[idx] += 1;
	}

	function voteFor(string candidate) public {
		int8 idx = index(candidate);
		require(idx >= 0);
		votes[uint8(idx)] += 1;
	}

	function index(string candidate) public returns (int8) {
		for (uint256 i = 0; i < candidates.length; i++) {
			if (keccak256(candidates[i]) == keccak256(candidate)) {
				return int8(i);
			}
		}

		return int8(-1);
	}
}

