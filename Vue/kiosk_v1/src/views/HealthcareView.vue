<template>
  <div>
    Health Care
    <div id="cards">
        <div id="card" v-for="card in services" v-bind:key="card.id">
            <div>{{card.serviceName}}</div>
            <div>{{card.serviceDescription}}</div>
            <div>{{card.serviceAddress}}</div>
            <div>{{card.servicePhone}}</div>
            <div>{{card.serviceHours}}</div>
        </div>
    </div>
  </div>
</template>

<script>
import serviceService from '../services/serviceService.js';
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
    }
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

</style>