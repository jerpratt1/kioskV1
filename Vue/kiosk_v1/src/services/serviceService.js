import axios from "axios";


export default {
    
    getAllServices(){
        return axios.get('/services')
    },

    getServicesByCategory(category){
        return axios.post("/#", category)
    },

}