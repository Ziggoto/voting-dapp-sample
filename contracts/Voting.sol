pragma solidity ^0.4.18;

contract Voting {
  // Lista de candidatos
  bytes32[] private candidates;

  // Lista de eleitores
  address[] private voters;

  // Hashmap com o resultado das eleições
  mapping (bytes32 => uint8) private votesReceived;

  // Construtor
  function Voting(bytes32[] candidateNames) public {
    candidates = candidateNames;
  }

  function getVotingResultForCandidate(bytes32 candidate) view public returns (uint8) {
    return votesReceived[candidate];
  }

  function voteForCandidate(bytes32 candidate) public {
    // Se a função não satisfazer, a execução do método termina
    require(isValidCandidate(candidate));
    require(isValidVoter(msg.sender));

    votesReceived[candidate] += 1;
    voters.push(msg.sender);
  }

  // Funcoes do tipo "view" não alteram a blockchain em si
  function isValidCandidate(bytes32 candidate) view public returns (bool) {
    for(uint i = 0; i < candidates.length; i++) {
      if (candidates[i] == candidate) {
        return true;
      }
    }
    return false;
  }

  function isValidVoter(address voter) view public returns (bool) {
    for(uint i = 0; i < voters.length; i++) {
      if (voters[i] == voter) {
        return false;
      }
    }
    return true;
  }
}
