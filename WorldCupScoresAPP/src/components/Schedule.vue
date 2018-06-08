<template>
  <div class="schedule">
     <div v-on:click="counter += 1" class="match-container" v-for="match in schedule" :key="match.matchid">
        <el-row>
          <el-col :span="24">
              <span class="hour">{{ match.hour }}</span>
              <el-row class="match ">

                  <el-col :span="6">
                      <img class="flags flag-local" :src="require('../assets/img/flags/' + match.local.flag)" width="100%">
                  </el-col>

                  <el-col :span="12" >
                      <div class="scores">

                        <div class="score score-local">
                            {{ counter }}
                        </div>

                        <div class="score score-local">
                            {{ counter }}
                        </div>

                        <div v-if="match.penalties" class="penalties">
                          <div class="penalty penalty-local">
                                {{ match.penalties.local }}
                            </div>
                            <div class="penalty penalty-local">
                                {{ match.penalties.away }}
                            </div>
                        </div>
                      </div>
                  </el-col>
                  <el-col :span="6">
                      <img class="flags flag-away"  :src="require('../assets/img/flags/' + match.away.flag)" width="100%">
                  </el-col>
              </el-row>
              <span class="stadium">{{ match.stadium }}</span>
          </el-col>
        </el-row>

      </div>
  </div>
</template>

<script>

var visitortime = new Date()
var visitortimezone = +-visitortime.getTimezoneOffset() / 60

export default {
  name: 'Schedule',
  data () {
    return {
      counter: 0,
      fullscreenLoading: true,
      tz: visitortimezone,
      schedule: []
    }
  },
  methods: {
    gettz: function () {
      this.tz = 'hello'
    }
  },
  mounted () {
    this.$http
      .get('http://localhost:8080/api/schedule', {
        params: {
          tz: this.tz
        }
      })
      .then(response => {
        this.schedule = response.data
        this.fullscreenLoading = false
      })
  }
}
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
