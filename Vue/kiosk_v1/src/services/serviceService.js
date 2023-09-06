import axios from "axios";


export default {
    
    getAllServices(){
        return axios.get('/services')
    },

    getServicesByCategory(category){
        return axios.get("/services/" + category)
    },

    addService(service){
        return axios.post("/services", service)
    },

}