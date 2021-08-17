<template>
<div>
  <div class="topnavAndBanner">
     <Topnav/>
    <div class="banner">
      <h1>橙子UI</h1>
      <h2>一个简单的 UI 框架</h2>
      <p class="actions">
        <a>GitHub</a>
        <router-link to="/doc">开始</router-link>
      </p>
    </div>
  </div>
  <div class="features">
  <svg class="icon" aria-hidden="true">
    <use xlink:href="#icon-vue"></use>
</svg>
  <svg class="icon" aria-hidden="true">
    <use xlink:href="#icon-ts"></use>
</svg>  
<svg class="icon" aria-hidden="true">
    <use xlink:href="#icon-code"></use>
</svg>
  </div>

</div>
</template>
<script lang="ts">
import Topnav from '../components/Topnav.vue'
export default {
    components:{Topnav}
}
</script>
<style lang="scss" scoped>

$purple:#674EB2;
$border-radius:4px;
$color:#1803b1;
 .topnavAndBanner{
background: linear-gradient(145deg, rgba(245,246,255,1) 0%, rgba(207,197,255,1) 100%);
 }

 .features{
   >svg{
     width: 64px;
     height: 64px;
   }
 }
.banner {
  color:$color;
    padding: 100px 0;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    // background: lightgreen;
    > .actions{
        padding: 8px 0;
        a {
            margin:0 8px;
            background: $purple;
            color:white;
            display: inline-block;
            border-radius: $border-radius;
            padding: 8px 24px;
            &:hover{
              text-decoration: none;
            }
        }
    }
}
  
</style> 