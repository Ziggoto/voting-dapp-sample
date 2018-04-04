<template lang="pug">
  div
    section.hero.is-dark
      .hero-body
        .container
          h1.title Eleições 2018
          h2.subtitle
            | Escolha seu candidato seu&nbsp;
            strong preferido
            | .
    section.section
      .container
        .columns
          .column(v-for='(candidate, index) in candidates', @click='vote(candidate.name)')
            .candidate-card
              img(:src='candidate.photo')
              .candadite-data
                .candidate-name \#{{index+1}} {{candidate.name}}
                div
                  span(style='font-weight:bold') Occupation:&nbsp;
                  span {{candidate.occupation}}
              div(:class='candidate.style')
                | Vote here
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
          photo: RickSanchez,
          occupation: 'Scientist'
        },
        {
          name: 'Bojack Horseman',
          style: 'notification is-success',
          photo: BojackHorseman,
          occupation: 'Actor'
        },
        {
          name: 'Mr Burns',
          style: 'notification is-warning',
          photo: MrBurns,
          occupation: 'Businessman'
        },
        {
          name: 'Peter Griffin',
          style: 'notification is-danger',
          photo: PeterGriffin,
          occupation: 'Jobless'
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
<style lang="stylus">
.candidate-card {
  display: flex;
  align-content: center;
  flex-wrap: wrap;

   .candadite-data {
      justify-content: flex-start;
      padding-left: 5px;

      .candidate-name {
        font-weight: bold;
        font-size: 1.3em;
      }
   }

   .notification {
    text-align: center;
    min-width: 225px;
    margin-top: 5px;
  }

}
</style>
