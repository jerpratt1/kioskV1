<template>
<div >
    <div id="cards">
        <div id="card" v-for="card in categories" v-bind:key="card.id">
            <div>{{card.categoryName}}</div>
            <div>Updated: {{card.updated}}</div>
            <button>Go</button>
        </div>
    </div>
</div>
</template>

<script>
import categoryService from '../services/categoryService.js';
export default {
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
  },

  created: 
    function(){
        this.populateCategories();
  }
}
</script>

<style scoped>

#cards{
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}

#card{
    display: flex;
    flex-direction: column;
    margin: 1%;
    padding: 1%;
    border-radius: 10px;
    box-shadow: 0 0 0 13px #333;
    width: 25%;
}

</style>