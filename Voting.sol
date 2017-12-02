pragma solidity ^0.4.18;

contract Voting {

	// number of votes fer candidate
	mapping (bytes32 => uint8) public votes;

	// list of candidate's names
	bytes32[] public candidates;
	
	function Voting(bytes32[] _candidates) {
		candidates = _candidates;
	}

	function getVotesFor(bytes32 candidate) view public returns(uint8) {
		require(isValidCandidate(candidate));
		return votes[candidate];
	}

	function voteFor(bytes32 candidate) public {
		require(isValidCandidate(candidate));
		votes[candidate] += 1;
	}

	function isValidCandidate(bytes32 candidate) view public returns(bool) {
		for (uint i = 0; i < candidates.length; i++) {
			if (candidates[i] == candidate) {
				return true;
			}
		}

		return false;
	}
}

