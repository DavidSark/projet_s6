<script setup>
import {client} from '@/utils/axios';

const bddData  = ref([]);
const scenarioData = ref([])
const currentScenarioID = ref(1);

onBeforeMount(async()=>{
    try{
        const response = await client.get('/planete');
        bddData.value = response.data;
    } catch(error){
        console.error('Erreur lors de la récupération des données du serveur', error);
    }
    try{
        const response = await client.get('/scenario');
        scenarioData.value = response.data;
        console.log(scenarioData)
    } catch(error){
        console.error('Erreur lors de la récupération des données du serveur', error);
    }
});

const handleResponse = (nextScenarioID) => {
    if (nextScenarioID !== null) {
        currentScenarioID.value = nextScenarioID;
    }
    // Vous pouvez ajouter une logique supplémentaire ici, par exemple pour gérer les scénarios sans suite
};
</script>

<template>
    <div class="container">
        <h2>Page intro</h2>

        <div v-for="item in scenarioData" :key="item.scenarioID" >
            <div  v-if="item.scenarioID === currentScenarioID">
                <p>{{ item.description }}</p>
                <button v-if="item.reponse1" @click="handleResponse(item.scenarioSuivant1)">{{ item.reponse1 }}</button>
                <button v-if="item.reponse2" @click="handleResponse(item.scenarioSuivant2)">{{ item.reponse2 }}</button>
            </div>
        </div>
       
    </div>
</template>

<style lang="scss" scoped>
.container{
    color: $white;
}
</style>