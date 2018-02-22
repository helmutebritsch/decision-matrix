<template>
<div class="container">
  <div class="column">
<table class="table is-striped table is-hoverable">
  <thead>
    <tr>
      <th><abbr title="Position">Pos</abbr></th>
      <th>Requirement</th>
      <th><abbr title="Weight">Weight</abbr></th>
      <th v-for="column in decision_data.solutions"><abbr title="Played">{{column.name}}</abbr></th>
      <th v-on:click="addColumn"><a class="button is-primary is-rounded">+</a></th>
    </tr>
  </thead>
  <tfoot>
    <tr>
      <th v-on:click="addRow"><a class="button is-primary is-rounded">+</a></th>
      <th>Result</th>
      <th><abbr title="Weight">100%</abbr></th>
      <th v-for="column in decision_data.solutions" ><abbr title="Played">0</abbr></th>
    </tr>
  </tfoot>
  <tbody>
    <row v-for="row,index in decision_data.decision_points" :solutions="decision_data.solutions" :row_data="row" :index="index"></row>
  </tbody>
</table>
</div>
{{decision_data}}
</div>
</template>

<script>
import Row from '@/components/row'

export default {
  name: 'Matrix',
    components: {
    'row': Row
  },
  methods: {
    addRow: function () {
      this.decision_data.decision_points.push({name: 'new_entry', weight: 0, datagrid: []})
      this.decision_points.datagrid.push([])
    },
    addColumn: function () {
      this.decision_data.solutions.push({name: 'new_entry'})
    }
  },
  data () {
    return {
      decision_data: {
        decision_points: [
          {name: 'new_entry', weight: 0, datagrid: []},
        ],
        solutions: [
          {name: 'new_solution'},
        ]
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
