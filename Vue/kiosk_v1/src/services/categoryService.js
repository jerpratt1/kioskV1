import axios from "axios";


export default {
    
    getAllCategories(){
        return axios.get('/categories')
    },

}