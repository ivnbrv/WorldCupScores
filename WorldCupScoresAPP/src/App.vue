<template>
    <el-container id="app">
      <el-main>
          <img src="./assets/img/logo_small.png" width="50%">
          <router-view/>
      </el-main>
      <Footer/>
    </el-container>
</template>
<script>
import Footer from './components/Footer.vue'

export default {
  name: 'App',
  components: {
    Footer
  }
}
</script>
<style>
</style>
