<template>
  <div>
    <section class="hero is-dark">
      <div class="hero-body">
        <div class="container">
          <h1 class="title">Eleições 2018</h1>
          <h2 class="subtitle">
            A simple container to divide your page into <strong>sections</strong>, like the one you're currently reading
          </h2>
        </div>
      </div>
    </section>
    <section class="section">
      <div class="container">
        <div class="columns">
          <div class="column" v-for="candidate in candidates" @click='vote(candidate.name)'>
            <div :class="candidate.style">
              <img :src="candidate.photo" />
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import RickSanchez from '@/assets/rick_sanchez.png'
import BojackHorseman from '@/assets/bojack_horseman.png'
import MrBurns from '@/assets/mr_burns.png'
import PeterGriffin from '@/assets/peter_griffin.jpeg'

export default {
  name: 'hello',
  data () {
    return {
      candidates: [
        {
          name: 'Rick Sanchez',
          style: 'notification is-info',
          photo: RickSanchez
        },
        {
          name: 'Bojack Horseman',
          style: 'notification is-success',
          photo: BojackHorseman
        },
        {
          name: 'Mr Burns',
          style: 'notification is-warning',
          photo: MrBurns
        },
        {
          name: 'Peter Griffin',
          style: 'notification is-danger',
          photo: PeterGriffin
        }
      ]
    }
  },
  methods: {
    vote (candidate) {
      this.$emit('vote', candidate)
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
</style>
