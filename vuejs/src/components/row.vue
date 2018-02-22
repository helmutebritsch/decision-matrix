<template>
    <tr>
      <th>{{index}}</th>
      <td><input class="input" v-model="row.name"></input></td>
      <td><input class="input" v-model="row.weight"></input></td>
      <td v-for="column,col_index in solutions"><input class="input" v-model="row.datagrid[col_index]"></input></td>
    </tr>
</template>

<script>
export default {
  name: 'row',
  props: ['row_data', 'index', 'solutions'],
  data () {
    return {
      row: this.row_data,
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
