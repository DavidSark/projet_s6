// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  app: {
    pageTransition: { name: 'page', mode: 'out-in' }
  },

  css: ['@/assets/scss/main.scss'],


  runtimeConfig: {
    public: {
      apiUrl: "",
    },
  },



  vite:{
    css:{
      preprocessorOptions:{
        scss:{
          additionalData:
            `@import "@/assets/scss/foundations/variables.scss";`
        }
      }
    }
  }
  
})
