<template>
  <v-app >
    <!-- main app handled by the router -->
    <v-main id="scrolling-techniques-2" class="overflow-y-auto" style="margin-top=45px; padding-bottom=0px"  >
      <Index/>
    </v-main>
  </v-app>
</template>

<script>
import Index from './components/Index.vue'
export default { 
  name: 'App',

  components: {
    Index
  }
};
</script>

<style>
#app {
margin-top: 30px;
padding-bottom: 0px;
}

</style>

