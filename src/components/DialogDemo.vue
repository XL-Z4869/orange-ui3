<template>
  <div>
      Dialog实例
      <h1>示例1</h1>
      <Button @click="toggle">toggle</Button>
      <Dialog v-model:visible="x"></Dialog>
  </div>
</template>
 

 <script>
 import Dialog from '../lib/Dialog.vue'
 import Button from '../lib/Button.vue'
import { ref } from '@vue/reactivity'
 export default {
  components:{
    Dialog,
    Button
    },
    setup(){
      const x=ref(false)
      const toggle=()=>{
        x.value=!x.value
      }
      return {x,toggle}
    }
 }
 </script>