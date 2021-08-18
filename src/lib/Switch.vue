<template>
  <button class="orange-switch" @click="switchToggle" :class="{'orange-checked':value}">
      <span></span>
  </button>
</template>

<script lang="ts">
 
export default {
    props:{
        value:Boolean
    },
    setup(props,context){
        const switchToggle=()=>{
            context.emit('update:value',!props.value)
        }
        return {switchToggle}
    }
}
</script>

<style lang="scss">
$h: 22px;
$h2: $h - 4px;
 .orange-switch {
  height: $h; 
  width: $h * 2; 
  border: none;
  background: #bfbfbf; 
  border-radius:11px; 
  position: relative;
  > span {
    position: absolute; 
    top: 2px; left: 2px; 
    height: $h2; 
    width: $h2; 
    background: white; 
    border-radius: 11px; 
    transition: all 250ms;
  }

  &.orange-checked { 
    background: orange;
    > span { 
      left: calc(100% - #{$h2} - 2px); 
    }
  }
  &:focus { outline: none; }
  &:active {
    > span { width: $h2 + 4px; }
  }
  &.orange-checked:active {
    > span { width: $h2 + 4px; margin-left: -4px; }
  }
}
</style>
 