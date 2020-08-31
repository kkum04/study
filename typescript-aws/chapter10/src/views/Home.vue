<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">

<!--    <method></method>-->
    <watch></watch>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import HelloWorld from '@/components/HelloWorld.vue'; // @ is an alias to /src
import Method from "@/components/Method.vue";
import Watch from "@/components/Watch.vue";

@Component({
  components: {
    HelloWorld,
    Method,
    Watch
  },
})
export default class Home extends Vue {}
</script>
