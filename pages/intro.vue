<script setup>
import {client} from '@/utils/axios'

const planeteData = ref([]);
const currentIndex = ref(0);

const updateCurrentIndex = (newIndex) => {
    currentIndex.value = newIndex;
};

onBeforeMount(async()=>{
    try{
        const response = await client.get('/planete');
        planeteData.value = response.data;
    } catch(error){
        console.error('Erreur lors de la récupération des données du serveur', error);
    }
});


</script>

<template>
    <div class="parent">
        <div class="container">
            <div class="container-stars">
                <Stars></Stars>
            </div>

            <div class="container-left">
                <RouterLink to="/instructions">
                    <p class="instructions">Instructions</p>
                </RouterLink>
            </div>
            <div class="container-middle">
                <MyCard @update:currentIndex="updateCurrentIndex" class="middle_card"></MyCard>
            </div>
            <div class="container-right">
                <img src="/img/hearth.png" alt="">
            </div>
        </div>
        <div class="container-bottom"  v-if="planeteData.length > 0">
            <div class="atmosphere">
                <h2>atmosphere</h2>
                <p>{{ planeteData[currentIndex].atmosphere }}</p>
            </div>
            <div class="population" >
                <h2>Population</h2>
                <p>{{ planeteData[currentIndex].population }}</p>
            </div>
            <div class="landing">
                <h2>landing</h2>
                <p>{{ planeteData[currentIndex].atterissage }}</p>
            </div>
        </div>
    </div>
</template>

<style lang="scss" scoped>
.parent{
    .container {
    position: relative;
    display: flex;
    height: 100vh;
    overflow: hidden;

    &-stars {
        width: 60%;
        height: rem(900);
        overflow: hidden;
        position: absolute;
    }

    &-left {
        color: $white;
        width: 15%;
        padding: rem(40) rem(0) rem(0) rem(40);

        a {

            color: white;
            text-decoration: none;
            font-weight: 200;
            font-size: rem(16);
            font-family: $font-poppins;

            .instructions {
                border-bottom: 1px solid transparent;
                transition: all .4s ease-in;
                text-transform: uppercase;
                position: relative;
                display: inline;
                cursor: pointer;

                &::after {
                    content: '';
                    position: absolute;
                    left: 0;
                    bottom: 0;
                    width: 100%;
                    height: 1px;
                    background-color: $white;
                    transform: scaleX(0);
                    transform-origin: left;
                    transition: transform .2s ease-in;
                }

                &:hover::after {
                    transform: scaleX(1);
                }
            }
        }

        // border: 1px solid red;

    }

    &-middle {
        width: 35%;
        // border: 1px solid green;

        .middle_card {
            display: flex;
            justify-content: flex-start;
            margin: 0 auto;
            padding-top: rem(40);

        }
    }

    &-right {
        width: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        // border: 1px solid orange;
    }

}
}

</style>