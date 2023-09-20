<template>
  <div>
    <nav>
        <router-link to="/">Home</router-link> 
        <router-link to="contact">Contact</router-link> 
        <router-link to="assistance">Assistance</router-link> 
        <router-link to="add">Add Service</router-link> 
        <div>
        <select name="Resources" id="Resources" v-model="selectedPage">
            <option value="mental_substance">Mental Health and Substance Abuse</option>
            <option value="healthcare">Healthcare</option>
            <option value="identification">Identification</option>
            <option value="employment">Employment Assistance</option>
            <option value="veteran">Veteran Assistance</option>
            <option value="outreach">Outreach and Drop-In</option>
            <option value="youth">Youth Assistance</option>
            <option value="legal">Legal Assistance</option>
            <option value="eviction">Eviction Assistance</option>
            <option value="meals">Free Meals</option>
            <option value="clothing_household">Clothing and Household</option>
            <option value="additional_resources">Additional Resources</option>  
        </select>
        <button v-on:click.prevent="goToSelected(selectedPage)">Go</button>
        </div>
    </nav>
  </div>
</template>

<script>
import router from '@/router'
export default {
 data() {
    return {
      selectedPage: "",
    }
  },

  methods: {
    goToSelected(){
        router.push('/' + this.selectedPage);
    }
    
  }
}
</script>

<style scoped>

nav{
    display: flex;
    justify-content:space-evenly;
    align-content: center;

}

</style>