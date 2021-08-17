<template>
   <article class="markdown-body" v-html="content"></article>
</template>

<script>
export default {
    props:{
        path:{
            typr:String,
            required:true
        }
    },
    setup(props){
        const content=ref<string>(null)
        import(props.path).then(result=>{
            content.value=result.default
        })
        return {
            content
        }
    }
}
</script>