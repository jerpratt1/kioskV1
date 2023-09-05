import axios from "axios";


export default {
    
    getAllServices(){
        return axios.get('/services')
    },

    getServicesByCategory(category){
        return axios.post("/#", category)
    },

    addService(service){
        return axios.post("/services", service)
    },

}