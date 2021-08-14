<template>
 <button class="orange-button"
 :class="{[`theme-${theme}`]:theme}">
  <slot/>
 </button>
</template>

<script>
export default {
   theme:{
     type:String,
     default:'button'
   }
}
</script>

<style lang="" scoped>
 
  
</style>