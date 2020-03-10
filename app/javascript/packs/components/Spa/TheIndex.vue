<template>
  <div>
    <div v-for="(item, index) in itemList" :key="index" >
      <router-link :to="{ name: 'Detail', params: { id: item.id } }" >
        <div> {{ item.title }} </div>
      </router-link>
    </div>
  </div>
</template>
<script>

export default {
  name: 'TheIndex',
  data() {
    return {
      itemList: [
        { id: 1, title: 'aaaaaaa' },
        { id: 2, title: 'bbbbbbb' },
        { id: 3, title: 'ccccccc' },
      ]
    };
  },
};
</script>
