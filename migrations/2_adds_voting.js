var Voting = artifacts.require("./Voting.sol");
module.exports = function(deployer) {
  deployer.deploy(Voting, ['Rick Sanchez', 'Bojack Horseman', 'Mr Burns', 'Peter Griffin']);
};
