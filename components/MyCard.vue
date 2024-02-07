<script setup>
import {client} from '@/utils/axios'

const planeteData = ref([])
const currentIndex = ref(0);

const emit = defineEmits(['update:currentIndex']);

onBeforeMount(async()=>{
    try{
        const response = await client.get('/planete');
        planeteData.value = response.data;
    } catch(error){
        console.error('Erreur lors de la récupération des données du serveur', error);
    }
});


const goToNextPlanet = () => {
    if (currentIndex.value < planeteData.value.length - 1) {
        currentIndex.value++;
        emit('update:currentIndex', currentIndex.value);
    }
};

const goToPreviousPlanet = () => {
    if (currentIndex.value > 0) {
        currentIndex.value--;
        emit('update:currentIndex', currentIndex.value);
    }
};

</script>

<template>
   <div class="container">
    <div class="container_content">
      <div class="container_content-title">
        <div class="triangle-left" @click="goToPreviousPlanet"></div>
        <h2 v-if="planeteData.length">{{ planeteData[currentIndex].nom }}</h2>
        <div class="triangle-right" @click="goToNextPlanet"></div>
      </div>
      <div class="container_content-desc">
        <p v-if="planeteData.length">{{ planeteData[currentIndex].description }}</p>
        <MyButton href="/history" class="btn">Land</MyButton>
      </div>
    </div>
  </div>  
</template>

<style lang="scss" scoped>
.container{
  font-family: $font-poppins;
  display: flex;
  flex-direction: column;
  justify-content: center;
  flex: 1;
  border: 1px solid;
  border-image: linear-gradient(to bottom, $white, transparent) 1;
  color: $white;  
  width: 100%;
  // width: rem(425);
  // height: 60vh;
  &_content{
    display: flex;
    flex-direction: column;

    &-title{
      margin-top: rem(40);
      display: flex;
      justify-content: center;
      align-items: center;
      .triangle-left{
      width: 0; 
      height: 0; 
      border-top: 8px solid transparent;
      border-bottom: 8px solid transparent;
      border-right: 12px solid $white;
      margin-right: rem(15);
      cursor:pointer;
    }

    .triangle-right{
      width: 0; 
      height: 0; 
      border-top: 8px solid transparent;
      border-bottom: 8px solid transparent;
      border-left: 12px solid $white;
      cursor:pointer;
    }
    h2{
      font-weight: 100;
      font-size: rem(32);
      //font-size: rem(64);
      text-transform: uppercase;
      letter-spacing: rem(20);
      display: flex;
      justify-content: center;
    }
    }

    &-desc{
        display: flex;
        flex-direction: column;
        width: 90%;
        // width: rem(350);
        margin: rem(30) auto;
        font-size: rem(10);
        p{
          font-weight: 200;
          line-height: rem(30);
        }
        .btn{
          margin-top: rem(20)
        }
    }
  
  }
}

@media screen and (min-width:768px) {
.container{
  overflow: hidden;
  width: rem(425);
  margin: 0 auto;
}
  .container_content-desc{
    width: rem(350);
    font-size: rem(16);
  }
}

@media screen and (min-width:1024px) {
  .container{
 
  width: rem(425);
  margin: 0 auto;
  &_content{
    &-title{
      h2{
         font-size: rem(64);
      }
    }
  }
}
.container_content-desc{
    padding: rem(0) rem(30) ;
  }
}

@media screen and (min-width: 1440px) {
  .container_content-desc{
    width: rem(425);
  }
}
</style>