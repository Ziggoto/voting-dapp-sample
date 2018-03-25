<template>
  <div id="app">
      <router-view @vote='register'></router-view>
  </div>
</template>

<script>
import Web3 from 'web3'
import TruffleContract from 'truffle-contract'

export default {
  name: 'app',
  mounted () {
    // Se conecta com a blockchain
    if (this.web3) {
      this.provider = this.web3.currentProvider
    } else {
      this.provider = new Web3.providers.HttpProvider('http://localhost:8545')
    }
    this.web3 = new Web3(this.provider)

    // Inicializa o contrato
    // TODO to add contract
    this.voteContract = TruffleContract('../../build/contracts/Voting.json')
    this.voteContract.setProvider(this.provider)
    // this.voteContract.defaults({from: window.web3.eth.accounts[0],gas:6721975})
  },
  data () {
    return {
      web3: null,
      provider: null,
      voteContract: {}
    }
  },
  methods: {
    register (candidate) {
      console.log(`I must register ${candidate} on blockchain`)

      this.web3.eth.getAccounts((error, accounts) => {
        if (error) {
          console.error('Error: ', error)
        }

        const account = accounts[0]

        this.voteContract.deployed()
          .then((instance) => {
            return instance.voteForCandidate(parseInt(candidate), {from: account})
          })
          .then(() => {
            console.log('Deu certo!')
          })
          .catch((err) => {
            console.error('Error: ', err)
          })
      })
    }
  }
}
</script>

<style>
</style>
