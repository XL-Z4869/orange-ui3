<template>
   <div>Button示例</div>
   <h1>示例1</h1>
   <div>
     <Button @click="onclick"
     @focus="onClick"
     @mouseover="onClick"
     size="small">你好</Button>
   </div>
</template>
<script>
import Button from '../lib/Button.vue'
export default {
  components:{Button},
  setup(){
    const onclick=()=>{
      console.log("你好");
    }
    return {onclick}
  }
}
</script>


 