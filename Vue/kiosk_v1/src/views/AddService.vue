<template>
  <div>
    <form v-on:submit.prevent="handleSubmit">
      <div id="container">
      <label for="service-name">*Service Name </label>
      <input name="service-name" type="text" v-model="service.serviceName" required>
      <label for="service-description">Description </label>
      <input name="service-description" type="text" v-model="service.serviceDescription">
      <label for="service-address"> Address </label>
      <input name="service-address" type="text" v-model="service.serviceAddress">
      <label for="service-phone">Phone Number </label>
      <input name="service-phone" type="phone" v-model="service.servicePhone">
      <label for="service-hours">Hours </label>
      <input name="service-hours" type="text" v-model="service.serviceHours">
      <label for="resources">*Category</label>
      <select name="resources" id="Resources" v-model="service.categoryId" required>
            <option value="1">Mental Health and Substance Abuse</option>
            <option value="2">Healthcare</option>
            <option value="3">Identification</option>
            <option value="4">Employment Assistance</option>
            <option value="5">Veteran Assistance</option>
            <option value="6">Outreach and Drop-In</option>
            <option value="7">Youth Assistance</option>
            <option value="8">Legal Assistance</option>
            <option value="9">Eviction Assistance</option>
            <option value="10">Free Meals</option>
            <option value="11">Clothing and Household</option>
            <option value="12">Additional Resources</option>  
        </select>
      <button> Submit </button>
      </div>
    </form>
    </div>
</template>

<script>
import serviceService from '@/services/serviceService'
export default {
  data() {
    return {
      service: {
        serviceName: "",
        serviceDescription: "",
        serviceAddress: "",
        servicePhone: "",
        serviceHours: "",
        categoryId: "",
      },
    }
  },

  methods: {
    handleSubmit() {
      serviceService.addService(this.service).then((response) =>{
        this.clearInputFormData();
        console.log(response);
        alert("Submitted");
      })
      .catch((error) => {
         if (error.response.status === 401) {
          alert('Error submitting form. Log-in and try again.');
        } else {
          alert('Experiencing system issues. Try again later.');
        }

      })
    },

    clearInputFormData() {
      this.service.name = "";
      this.service.description = "";
      this.service.address = "";
      this.service.phone = "";
      this.service.hours = "";
      this.service.categoryId = "";
    },
  }

}
</script>

<style scoped>

#container{
  display: flex;
  flex-direction: column;
}

input{
  width: 10%;
  margin: auto;
}

select{
  width: 10%;
  margin: auto;
}

button{
  width: 10%;
  margin: auto;
}
</style>