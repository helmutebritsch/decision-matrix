<template>
<div class="container">
  <div class="column">
<table class="table is-striped table is-hoverable">
  <thead>
    <tr>
      <th><abbr title="Position">Pos</abbr></th>
      <th>Requirement</th>
      <th><abbr title="Weight">Weight</abbr></th>
      <th v-for="column in decision_data.solutions"><input class="input" v-model="column.name"></th>
      <th v-on:click="addColumn"><a class="button is-primary is-rounded">+</a></th>
    </tr>
  </thead>
  <tfoot>
    <tr>
      <th v-on:click="addRow"><a class="button is-primary is-rounded">+</a></th>
      <th>Result</th>
      <th><abbr title="Weight">Total</abbr></th>
      <th v-for="column,index in decision_data.solutions" ><abbr title="Played">{{calculate(index)}}</abbr></th>
    </tr>
  </tfoot>
  <tbody>
    <row v-for="row,index in decision_data.decision_points" :solutions="decision_data.solutions" :row_data="row" :index="index"></row>
  </tbody>
</table>
</div>
<div class="columns">
  <div class="column">
    <h3>JSON download</h3>
    <textarea cols="100" rows="30">
      {{decision_data}}
    </textarea>
  </div>
  <div>
    <h3>JSON upload</h3>
    <textarea cols="100" rows="30" v-model="data_dump" @change="uploadJson">
    </textarea>
  </div>
</div>
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
    },
    addColumn: function () {
      this.decision_data.solutions.push({name: 'new_entry'})
    },
    calculate: function (column) {
      const add = (a, b) => a + b
      return this.decision_data.decision_points.map(entry => parseInt(entry.weight) * (entry.datagrid[column] ? parseInt(entry.datagrid[column]) : 0)).reduce(add)
    },
    uploadJson: function() {
      this.decision_data = JSON.parse(this.data_dump)
    }
  },
  data () {
    return {
      data_dump: "",
      decision_data: {
        version: "1",
        decision_points: [],
        solutions: []
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
