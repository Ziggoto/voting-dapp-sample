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
          <div class="column" @click='vote("A")'>
            <div class="notification is-info">Rick Sanchez</div>
          </div>
          <div class="column" @click='vote("B")'>
            <div class="notification is-success">Bojack Horseman</div>
          </div>
          <div class="column" @click='vote("C")'>
            <div class="notification is-warning">Mr Burns</div>
          </div>
          <div class="column" @click='vote("D")'>
            <div class="notification is-danger">Peter Griffin</div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'hello',
  mounted () {
    console.log('I was mounted')
  },
  data () {
    return {
    }
  },
  methods: {
    vote (candidate) {
      console.log('emit')
      this.$emit('vote', candidate)
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
</style>
