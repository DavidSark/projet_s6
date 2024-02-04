<script setup>
const props = defineProps({
  spacing: String,
  href: String,
})

const className = computed (()=>({
  //letter spacing du bouton
  ' -spacing': props.spacing === 'spaced'
}))
</script>


<template>
  <div>
    <RouterLink class="button" :class="className" :to="href">
      <slot></slot>
    </RouterLink>
  </div>
</template>

<style lang="scss" scoped>
.button{
  display: inline-block;
  text-decoration: none;
  background: transparent;
  border: 1px solid $white;
  padding: rem(15) rem(25);
  color: $white;
  font-size: rem(12);
  text-transform: uppercase;
  cursor: pointer;

  &.-spacing{
    letter-spacing: rem(7);
  }
}

@media screen and (min-width:1024px){
  .button{
    font-size: rem(16);
  }
}
</style>