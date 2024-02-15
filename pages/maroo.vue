<script setup>
import { client } from '@/utils/axios';
import { watch } from 'vue';

const bddData = ref([]);
const scenarioData = ref([])
const currentScenarioID = ref(12);
const oxygenLevel = ref(100);
const timerDuration = 300;
const countdown = ref(timerDuration);

let interval; 

onBeforeMount(async () => {
  try {
    const response = await client.get('/planete');
    bddData.value = response.data;
  } catch (error) {
    console.error('Erreur lors de la récupération des données du serveur', error);
  }
  try {
    const response = await client.get('/scenario');
    scenarioData.value = response.data;
    console.log(scenarioData)
  } catch (error) {
    console.error('Erreur lors de la récupération des données du serveur', error);
  }
});

watch(currentScenarioID, (newVal, oldVal) => {
  const scenarioActuel = scenarioData.value.find(item => item.scenarioID === newVal);
  if (scenarioActuel && scenarioActuel.scenarioSuivant1 === null && scenarioActuel.scenarioSuivant2 === null) {
    clearInterval(interval);
    const endGameInterface = document.getElementsByClassName('end')[0];
    endGameInterface.style.display = 'flex';
  }
});

const handleResponse = (nextScenarioID) => {
  if (nextScenarioID === 1000) {
    // C'est la fin du scénario
    clearInterval(interval); // Arrêter le compte à rebours
    // Afficher un message de fin ou effectuer une redirection
    const endGameInterface = document.getElementsByClassName('end')[0];
    endGameInterface.style.display = 'flex';
    return; // Sortir de la fonction pour ne pas modifier `currentScenarioID`
  }
  else if (nextScenarioID === 999) {
    // C'est la fin du scénario
    clearInterval(interval); // Arrêter le compte à rebours
    // Afficher un message de fin ou effectuer une redirection
    const endGameInterface = document.getElementsByClassName('dead')[0];
    endGameInterface.style.display = 'flex';
    return; // Sortir de la fonction pour ne pas modifier `currentScenarioID`
  }
  currentScenarioID.value = nextScenarioID;
}

const activeScenario = computed(() => {
  return scenarioData.value.find(item => item.scenarioID === currentScenarioID.value);
});


const startCountdown = () => {
  interval = setInterval(() => { // Retirez "const" pour utiliser la variable "interval" déclarée en dehors
    countdown.value--;
    oxygenLevel.value = (countdown.value / timerDuration) * 100;

    if (countdown.value <= 0 || oxygenLevel.value <= 0) {
      clearInterval(interval);
      const deadInterface = document.getElementsByClassName('dead')[0];
      deadInterface.style.display = 'flex';
    }
  }, 1000); // Mise à jour chaque seconde

  onUnmounted(() => {
    clearInterval(interval);
  });
};

onMounted(() => {
  startCountdown();
});
</script>



<template>
  <div class="container">

    <div class="container-left">
      <RouterLink to="/intro">
        <p class="return">Back to ship</p>
      </RouterLink>
    </div>
    <div class="container-middle">
      <h2>Maroo</h2>
      <div v-for="item in scenarioData" :key="item.scenarioID">
        <div v-if="item.scenarioID === currentScenarioID">
          <div class="container-middle-content">
            <p>{{ item.description }}</p>
            <p class="choix">What do you decide ?</p>
            <button class="btn" v-if="item.reponse1" @click="handleResponse(item.scenarioSuivant1)">{{ item.reponse1
            }}</button>
            <button class="btn btn2"  v-if="item.reponse2 && item.scenarioSuivant2 !== 1001" @click="handleResponse(item.scenarioSuivant2)">{{ item.reponse2
            }}</button>
            <div class="status">
              <p>Status</p>
              <div class="o2">
                <p>O₂ : {{ oxygenLevel.toFixed(0) }}%</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-right">
      <div class="container-right-content" v-if="activeScenario">
        <img :src="activeScenario.image" alt="image du scénario">
      </div>
    </div>

    <div class="dead">
      <h2>You are dead.</h2>
      
      <RouterLink to="/intro">
        <p>Try again</p>
      </RouterLink>
    </div>

    <div class="end">
      <h2>Congratulations</h2>
      <h2>You completed this planet</h2>
      <RouterLink to="/intro">
        <p>Back to ship</p>
      </RouterLink>
    </div>

  </div>
</template>

<style lang="scss" scoped>
.container {
  display: flex;
  flex-direction: column-reverse;
  height: 100vh;
  position: relative;

  .dead {
    color: white;
    position: fixed;
    background: black;
    z-index: 99;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    font-family: $font-poppins;
    font-weight: 100;
    font-size: rem(16);
    text-transform: uppercase;
    letter-spacing: rem(10);
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding-bottom: rem(200);
    display: none;
    animation: fadeIn .5s;
    a{
      text-decoration: none;
      color: white;
      letter-spacing: rem(10);
        font-size: rem(10);
        margin-top: rem(50);
    }
  }
  .end {
    color: white;
    position: fixed;
    background: black;
    z-index: 99;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    font-family: $font-poppins;
    font-weight: 100;
    font-size: rem(16);
    text-transform: uppercase;
    letter-spacing: rem(10);
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding-bottom: rem(200);
    display: none;
    animation: fadeIn .2s;
    a{
      text-decoration: none;
      color: white;
      letter-spacing: rem(10);
        font-size: rem(10);
        margin-top: rem(50);
    }
  }
  &-left {
    position: absolute;
    top: 0;
    left: 0;
    color: $white;
    width: 15%;
    padding: rem(20) rem(0) rem(0) rem(50);
    white-space: nowrap;
    z-index: 20;
    a {
      color: white;
      text-decoration: none;
      font-weight: 200;
      font-size: rem(10);
      font-family: $font-poppins;
      .return {
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
  }

  &-middle {
    font-family: $font-poppins;
    border: 1px solid;
    border-image: linear-gradient(to bottom, $white, transparent) 1;
    color: $white;
    width: 100%;
    height: 99vh;
    position: relative;
    h2 {
      font-weight: 100;
      font-size: rem(32);
      //font-size: rem(64);
      text-transform: uppercase;
      letter-spacing: rem(20);
      display: flex;
      justify-content: center;
      margin-top: rem(40);
    }
    &-content {
      display: flex;
      flex-direction: column;
      justify-content: flex-start;
      width: 90%;
      // width: rem(350);
      margin: rem(30) auto;
      font-size: rem(10);
      .status {
        display: flex;
        flex-direction: column;
        gap: rem(5);
        margin-top: rem(20);
        .o2 {
          display: flex;
          gap: rem(10);
        }
      }

      p {
        font-weight: 200;
        line-height: rem(20);
      }

      .btn {
        width: fit-content;
        margin-top: rem(20);
        display: inline-block;
        text-decoration: none;
        background: transparent;
        border: 1px solid $white;
        padding: rem(7) rem(15);
        color: $white;
        font-family: $font-poppins;
        font-size: rem(12);
        text-transform: uppercase;
        cursor: pointer;
        text-align: left;
      }

      .choix {
        margin-top: rem(40);
      }
    }
  }

  &-right {
    overflow: hidden;
    position: relative;
    z-index: 10;

    img {
      width: 100%;
    }
  }
}

@keyframes fadeIn {
  0% { opacity: 0; }
  100% { opacity: 1; }
}


@media screen and (min-width:768px) {
  .container {
    overflow: hidden;
    width: rem(425);
    margin: 0 auto;
  }

  .container-middle-content {
    width: rem(350);
    font-size: rem(16);
  }
}

@media screen and (min-width:1024px) {
  .container {
    margin: 0;
    display: flex;
    flex-direction: row;
    width: 100%;

    &-left {
      position: initial;
      width: 15%;
      padding: rem(40) rem(0) rem(0) rem(40);

      a {
        font-size: rem(16);
      }
    }

    &-middle {
      width: rem(425);
    }

    &-right {
      flex: 1;

      img {
        max-width: rem(757);
      }
    }
  }

}


@media screen and (min-width: 1440px) {
  .container {
    &-right {
      flex: 1;
      display: flex;
      justify-content: center;

      img {
        max-width: rem(757);

      }
    }
  }
}</style>