<script setup>
import {client} from '@/utils/axios';

const bddData  = ref([]);

onBeforeMount(async()=>{
    try{
        const response = await client.get('/test');
        bddData.value = response.data;
    } catch(error){
        console.error('Erreur lors de la récupération des données du serveur', error);
    }
});
</script>

<template>
    <div>
        <h2>Page intro</h2>
        <ul>      
            <li v-for="item in bddData" :key="item.id">
                {{item.nom}}
            </li>
          
        </ul>
    </div>
</template>

<style lang="scss" scoped>
li{
   
}
</style>