<template>
<v-container>
  <v-col cols="12"> </v-col>
    <v-row v-for= "(item,i) in info" :key="i" class="text-center" >
      <v-img contain width="100%" :src="item.url"/>
    </v-row>
  </v-container>
</template>

<script>
import axios from 'axios';
  export default {
    name: 'Index',
    mounted () {
    axios
      .get('http://127.0.0.1:5000/images').then(response => (this.info = response.data))
    },
    data: () => ({
      info:""
      }),
  }
</script>

<style>
/* Bottom right text */
.bannerRight {
  position: absolute;
  bottom: 0%;
  right: 0%;
  color: rgba(255, 255, 255, .9);
  font-family: 'Pathway Gothic One', sans-serif;
  font-size: 700%;
  background-image: linear-gradient(to right, rgba(255, 255, 255, 0), rgba(200, 200, 200, .0), rgba(3, 3, 3, .4));
  padding-left: 100%;
  padding-right: 2%;
  padding-top: 100% ;
  padding-bottom: 5px;
}
</style>