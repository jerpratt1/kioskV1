<template>
  <div>
    <form v-on:submit.prevent="handleSubmit">
        <div id="editForm">
            <label for="service-name">*Service Name </label>
            <input name="service-name" type="text" v-model="card.serviceName" required>
            <label for="service-description">Description </label>
            <input name="service-description" type="text" v-model="card.serviceDescription" class = "largeInput">
            <label for="service-address"> Address </label>
            <input name="service-address" type="text" v-model="card.serviceAddress">
            <label for="service-phone">Phone Number </label>
            <input name="service-phone" type="phone" v-model="card.servicePhone">
            <label for="service-hours">Hours </label>
            <input name="service-hours" type="text" v-model="card.serviceHours" class = "largeInput">
            <button>Update</button>
        </div>
    </form>
  </div>
</template>

<script>
export default {
    data(){
        return {
            card: {}
        }
    },

    methods: {
        populateCard(){
            this.card = this.$store.state.serviceToEdit;
        },

        handleSubmit(){
            console.log("clicked")

        },
    },

    created: 
    function(){
        this.populateCard();
  }

}
</script>

<style scoped>
#editForm{
  display: flex;
  flex-direction: column;
  width: 50%;
  margin: auto;
}

.largeInput{
    height: 50px;
}

</style>