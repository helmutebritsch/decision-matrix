<template>
    <tr>
      <th>{{index}}</th>
      <td><input class="input requirement-name-input" v-model="row.name"></input></td>
      <td class="weight"><input class="input" v-model="row.weight"></input></td>
      <td v-for="column,col_index in solutions" :class="'cell'+row.datagrid[col_index]" ><input class="input cell-input" v-model="row.datagrid[col_index]"></input></td>
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
.weight {
  width: 30px;
}
.cell-input {
  width: 50px;
}
.requirement-name-input {
  width: 400px;
}
.cell10 {
  background-color: #AAFFAA;
}
.cell9 {
  background-color: #BBEEAA;
}
.cell8 {
  background-color: #CCDDAA;
}
.cell7 {
  background-color: #EEEEAA;
}
.cell6 {
  background-color: #FFFFAA;
}
.cell5 {
  background-color: #FFEEAA;
}
.cell4 {
  background-color: #FFDDAA;
}
.cell3 {
  background-color: #FFCCAA;
}
.cell2 {
  background-color: #FFBBAA;
}
.cell1 {
  background-color: #FFAAAA;
}
</style>
