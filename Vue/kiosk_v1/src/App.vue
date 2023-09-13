<template>
  <div id="app">
    <the-header id="header"/>
    <router-view />
  </div>
</template>

<script>
import TheHeader from './components/TheHeader.vue'

export default {
  name: 'App',
  components: {
    TheHeader,
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

#header{
  position: -webkit-sticky; /* Safari */
  position: sticky;
  top: 0;
}


html{
  background: lightgray;
  background-size: cover;
  background-attachment: fixed;
}
</style>
