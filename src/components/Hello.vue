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
            <div :class="candidate.style">{{candidate.name}}</div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'hello',
  data () {
    return {
      candidates: [
        {
          name: 'Rick Sanchez',
          style: 'notification is-info',
          photo: null
        },
        {
          name: 'Bojack Horseman',
          style: 'notification is-success',
          photo: null
        },
        {
          name: 'Mr Burns',
          style: 'notification is-warning',
          photo: null
        },
        {
          name: 'Peter Griffin',
          style: 'notification is-danger',
          photo: null
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
