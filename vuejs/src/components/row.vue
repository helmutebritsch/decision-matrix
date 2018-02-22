<template>
    <tr>
      <th>{{index}}</th>
      <td>{{row.name}}</td>
      <td>{{row.weight}}</td>
      <td v-for="column in solutions">0</td>
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
