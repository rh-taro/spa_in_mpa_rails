import Vue from 'vue';
import Router from 'vue-router';

import TheIndex from '../components/Spa/TheIndex.vue';
import TheDetail from '../components/Spa/TheDetail.vue';

Vue.use(Router);

export default new Router({
  base: '/spa/',
  routes: [
    {
      path: '/',
      name: 'Index',
      component: TheIndex,
    },
    {
      path: '/detail/:id',
      name: 'Detail',
      component: TheDetail,
    },
  ],
});
