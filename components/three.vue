<script setup>
import { onMounted, onUnmounted, onBeforeUpdate, ref, watch } from 'vue';
import * as THREE from 'three';
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls.js';

// Props
const props = defineProps({
  textureUrl: String,
});

const planetContainer = ref(null);
let planet, scene, camera, renderer, controls;

const initScene = () => {
  if (planetContainer.value && !renderer) {
    createScene();
  }
}

const createScene = () => {
  const container = planetContainer.value;
  scene = new THREE.Scene();
  scene.background = new THREE.Color(0x121212);
  camera = new THREE.PerspectiveCamera(75, container.offsetWidth / container.offsetHeight, 0.1, 1000);
  renderer = new THREE.WebGLRenderer();
  renderer.setSize(container.offsetWidth, container.offsetHeight);
  container.appendChild(renderer.domElement);

  const ambientLight = new THREE.AmbientLight(0xcccccc);
  scene.add(ambientLight);

  const directionalLight = new THREE.DirectionalLight(0xffffff, 1);
  directionalLight.position.set(5, 3, 5);
  scene.add(directionalLight);

  const geometry = new THREE.SphereGeometry(2, 32, 32);
  const material = new THREE.MeshStandardMaterial({ map: new THREE.TextureLoader().load(props.textureUrl) });
  planet = new THREE.Mesh(geometry, material);
  scene.add(planet);

  camera.position.z = 5;

  controls = new OrbitControls(camera, renderer.domElement);
  controls.enableZoom = false;
  controls.autoRotate = true;

  const animate = () => {
    requestAnimationFrame(animate);
    controls.update();
    renderer.render(scene, camera);
};

  animate();
};

const onWindowResize = () => {
  if (camera && renderer) {
    camera.aspect = planetContainer.value.offsetWidth / planetContainer.value.offsetHeight;
    camera.updateProjectionMatrix();
    renderer.setSize(planetContainer.value.offsetWidth, planetContainer.value.offsetHeight);
  }
};
onMounted(() => {
  createScene();
  window.addEventListener('resize', onWindowResize, false);
});

onBeforeUpdate(() => {
  initScene();
});

onUnmounted(() => {
  window.removeEventListener('resize', onWindowResize);
  if (renderer) {
    renderer.domElement.remove();
    renderer.dispose();
  }
  // Vous pouvez également ajouter ici le nettoyage de la scène, de la caméra, des contrôles, etc.
});

watch(() => props.textureUrl, (newValue) => {
  if (planet) {
    const texture = new THREE.TextureLoader().load(newValue);
    planet.material.map = texture;
    planet.material.needsUpdate = true;
  }
});



</script>

<template>
  <div id="planet-container" ref="planetContainer"></div>
</template>

<style>
#planet-container {
  width: 100%;
  height: 60vh; 
}

@media screen and (min-width:1024px) {
  #planet-container {
    width: 100%;
    height: 80vh; 
  }
}

@media screen and (min-width:1440px) {
  #planet-container {
    width: 100%;
    height: 100vh; 
  }
}
</style>