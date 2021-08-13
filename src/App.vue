<template>
  <div>
     <router-view />
  </div>
</template>

<script>
 
import { provide,ref } from 'vue'
 
 
 
export default {
  name: 'App',
  setup(){
    const asideVisible=ref(false)
    provide('asideVisible',asideVisible)
  }
}
</script>
