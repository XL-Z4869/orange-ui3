<template>
 <button class="orange-button"
 :class="classes" :disabled="disabled">
  <slot/>
 </button>
</template>

<script>
import { computed } from '@vue/reactivity'
export default {
   props:{
      theme:{
        type:String,
        default:'button'
   },
   size:{
     type:String,
     default:"normal"
   },
   level:{
     type:String,
     default:"normal"
   },
   disabled:{
     type:String,
     default:false
   }
   },
   setup(props){
      const {theme,size,level}=props
      const classes=computed(()=>{
        return {
          [`orange-theme-${theme}`]:theme,
          [`orange-size-${size}`]:size,
          [`orange-level-${level}`]:level
        }
      })
      return {classes}
   }
   
}
</script>

<style lang="scss">
$h: 32px;
$border-color: #d9d9d9;
$color: #333;
$orange: orange;
$radius: 4px;
$red:red;
$grey:grey;
.orange-button {
  box-sizing: border-box;
  height: $h;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: white;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  transition: background 250ms;
  & + & {
    margin-left: 8px;
  }
  &:hover,
  &:focus {
    color: $orange;
    border-color: $orange;
  }
  &:focus {
    outline: none;
  }
  &::-moz-focus-inner {
    border: 0;
  }
    &.orange-theme-link{
    border-color: transparent;
    box-shadow: none;
    color: $orange;
    &:hover,&:focus{
      color: lighten($orange, 10%);
    }
  }
  &.orange-theme-text{
    border-color: transparent;
    box-shadow: none;
    color: inherit;
    &:hover,&:focus{
      background: darken(white, 5%);;
    }
  }
     &.orange-size-big {
    font-size: 24px;
    height: 48px;
    padding: 0 16px;
  }
  &.orange-size-small {
    font-size: 12px;
    height: 20px;
    padding: 0 4px;
  }
   &.orange-theme-button {
    &.orange-level-main {
      background: $orange;
      color: white;
      border-color: $orange;
      &:hover,
      &:focus {
        background: darken($orange, 10%);
        border-color: darken($orange, 10%);
      }
    }
    &.orange-level-danger {
      background: $red;
      border-color: $red;
      color: white;
      &:hover,
      &:focus {
        background: darken($red, 10%);
        border-color: darken($red, 10%);
      }
    }
  }
  &.orange-theme-link {
    &.orange-level-danger {
      color: $red;
      &:hover,
      &:focus {
        color: darken($red, 10%);
      }
    }
  }
  &.orange-theme-text {
    &.orange-level-main {
      color: $orange;
      &:hover,
      &:focus {
        color: darken($orange, 10%);
      }
    }
    &.orange-level-danger {
      color: $red;
      &:hover,
      &:focus {
        color: darken($red, 10%);
      }
    }
  }
    &.orange-theme-button {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;
      &:hover {
        border-color: $grey;
      }
    }
  }
  &.orange-theme-link, &.orange-theme-text {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;
    }
  }
}
</style>