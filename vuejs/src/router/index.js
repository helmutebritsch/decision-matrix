import Vue from 'vue'
import Router from 'vue-router'
import Matrix from '@/components/matrix'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Matrix',
      component: Matrix
    }
  ]
})
