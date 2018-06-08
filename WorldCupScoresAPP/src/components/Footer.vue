<template>
  <footer class="footer">
    <el-row  :gutter="1" class="nav">
      <el-col :span="6" class="nav-item">
        <router-link to="schedule">Schedule</router-link>
      </el-col>

      <el-col :span="6" class="nav-item">
        <router-link to="teams">Teams</router-link>
      </el-col>

      <el-col :span="6" class="nav-item">
        <router-link to="scoreboard">Scoreboard</router-link>
      </el-col>

      <el-col :span="6" class="nav-item">
        <router-link to="profile">Profile</router-link>
      </el-col>
    </el-row>
  </footer>
</template>

<script>
export default {
  name: 'Footer',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
