<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">

    <method></method>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import HelloWorld from '@/components/HelloWorld.vue'; // @ is an alias to /src
import Method from "@/components/Method.vue";

@Component({
  components: {
    HelloWorld,
    Method
  },
})
export default class Home extends Vue {}
</script>
