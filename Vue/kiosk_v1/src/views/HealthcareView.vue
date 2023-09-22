<template>
  <div>
    <h1>Health Care</h1>
    <div id="cards">
        <div id="card" v-for="card in services" v-bind:key="card.id" >
          <div id="details">
            <h2 id="title">{{card.serviceName}}</h2>
            <button id="button" v-on:click.prevent="goToEdit(card)">Edit</button>
            <div id="description">{{card.serviceDescription}}</div>
            <div id="address">{{card.serviceAddress}}</div>
            <div id="phone">{{card.servicePhone}}</div>
            <div id="hours">{{card.serviceHours}}</div>
          </div>
        </div>
    </div>
  </div>
</template>

<script>
import serviceService from '../services/serviceService.js';
import router from '@/router/index.js';
export default {
  data(){
    return {
      services: [],
    }
  },
  

  methods: {
    populateServices() {
      serviceService.getServicesByCategory(2).then((response) =>{
        this.services = response.data;
      })
    },

    goToEdit(card){
      this.$store.commit('SET_SERVICE_TO_EDIT', card)
      router.push('/editService')
    },
  },

  created: 
    function(){
        this.populateServices();
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

#editForm{
  display: flex;
  flex-direction: column;
}

#title{
  grid-area: "title";
  margin: 2%;
}

#button{
  grid-area: "button";
  margin: 2%;
}

#description{
  grid-area: "description";
  margin: 2%;
}

#phone{
  grid-area: "phone";
  margin: 2%;
}

#address{
  grid-area: "address";
  margin: 2%;
}

#hours{
  grid-area: "hours";
  margin: 2%;
}

#details{
  display: grid;
  grid-template-areas: 
  "title button"
  "description phone"
  "address hours";
}

h2{
  text-decoration: underline;
}

</style>