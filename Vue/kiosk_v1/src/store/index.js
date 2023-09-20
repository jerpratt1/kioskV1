import Vue from 'vue'
import Vuex from 'vuex'
import createPersistedState from 'vuex-persistedstate'

Vue.use(Vuex)

/* eslint-disable no-new */
const store = new Vuex.Store({
  state: {
    serviceToEdit: {}
  },
  mutations: {
    SET_SERVICE_TO_EDIT(state, card){
      state.serviceToEdit = card;
    },

    RESET_SERVICE_TO_EDIT(state){
      state.serviceToEdit = {};
    },
  },
  plugins: [createPersistedState()],
  modules: {
  }
})

export default store
