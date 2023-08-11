<template>
  <div class="hello">
    <div>Categories:{{categories}}</div>
    <button v-on:click="populateCategories">Push me</button>
  </div>
</template>

<script>
import categoryService from '../services/categoryService.js';
export default {
  name: 'HelloWorld',
  data(){
    return {
      categories: [],
    }
  },
  

  methods: {
    populateCategories() {
      categoryService.getAllCategories().then((response) =>{
        this.categories = response.data;
      })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
