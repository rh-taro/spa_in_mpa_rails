<template>
  <div>
    <div>
      <router-link :to="{ name: 'Index' }"> 戻る </router-link>
    </div>

    <div>
      id: {{ $route.params.id }}
    </div>
  </div>
</template>

<script>
export default {
  name: 'TheDetail',
  data() {
    return {};
  },
};
</script>