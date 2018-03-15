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
					<div class="column">
            <div class="notification is-info">First column</div>
					</div>
					<div class="column">
            <div class="notification is-success">Second column</div>
					</div>
					<div class="column">
            <div class="notification is-warning">Third column</div>
					</div>
					<div class="column">
            <div class="notification is-danger">Fourth column</div>
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
    return {}
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
</style>
