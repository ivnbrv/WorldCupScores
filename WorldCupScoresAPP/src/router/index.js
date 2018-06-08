import Vue from 'vue'
import Router from 'vue-router'
/** Components */
import Home from '@/components/Home'
import Schedule from '@/components/Schedule'
import Teams from '@/components/Teams'
// import Teams from '@/components/Teams'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/schedule',
      name: 'Schedule',
      component: Schedule
    },
    {
      path: '/teams',
      name: 'Teams',
      component: Teams
    }

  ]
})
