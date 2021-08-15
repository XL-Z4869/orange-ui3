<template>
  <div>
      Tabs实例
  </div>
  <h1>示例1</h1>
  <Tabs>
    <Tab title="导航1">内容1</Tab>
    <Tab title="导航2">内容2</Tab>
  </Tabs>
</template>

<script lang="ts">
import Tabs from '../lib/Tab.vue'
import Tab from '../lib/Tabs.vue'
export default {
  components:{Tab,Tabs}
}
</script>
 