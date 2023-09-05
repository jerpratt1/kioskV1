<template>
  <div>
    <nav>
        <router-link to="/">Home</router-link> | 
        <router-link to="/contact">Contact</router-link> | 
        <router-link to="/add">Add Service</router-link> | 
        <label for="Resources"> Resources </label>
        <select name="Resources" id="Resources">
            <option value="Mental Health and Substance Abuse">Mental Health and Substance Abuse</option>
            <option value="Healthcare">Healthcare</option>
            <option value="Identification">Identification</option>
            <option value="Employment Assistance">Employment Assistance</option>
            <option value="Veteran Assistance">Veteran Assistance</option>
            <option value="Outreach and Drop-In">Outreach and Drop-In</option>
            <option value="Youth Assistance">Youth Assistance</option>
            <option value="Legal Assistance">Legal Assistance</option>
            <option value="Eviction Assistance">Eviction Assistance</option>
            <option value="Free Meals">Free Meals</option>
            <option value="Clothing and Household">Clothing and Household</option>
            <option value="Additional Resources">Additional Resources</option>  
        </select>
        <button>Go</button>
        
    </nav>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>

nav{
    display: flex;
    justify-content: center;
    align-content: center;

}

</style>