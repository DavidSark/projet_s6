<script setup>

</script>

<template>
    <div class="container">
        <div class="container-title">
            <h1>Journey</h1>
        </div>
        <div class="line"></div>
        <MyButton spacing="spaced" href="/instructions" >Launch</MyButton>
    </div>
</template>

<style lang="scss" scoped>
    .container{
        font-family: $font-poppins;
        display: flex;
        flex-direction: column;
        justify-content: center;
        height: 100vh;
        
        &-title{
            opacity: 0;
            color: $white;
            text-transform: uppercase;
            font-weight: 100;
            font-size: 8vw;
            letter-spacing: rem(10);
            display: flex;
            justify-content: center;
            padding-bottom: rem(40);
            //padding: rem(0) rem(0) rem(40) rem(120);
            animation: appear 2s ease forwards;
            animation-delay: 1.5s;
        }

        .line{
            opacity: 0;
            height: rem(5);
            width: 100%;
            background: linear-gradient(to right, transparent, $white);
            animation: expand 2s ease forwards;
            animation-delay: 1s;
        }

        :nth-child(3){
            opacity: 0;
            display: flex;
            justify-content: center;
            margin-top: rem(25);
            //margin-top: rem(80);
            animation: appear 2s ease forwards;
            animation-delay: 2.5s;
        }
    }

    @keyframes expand {
        from {
            width: 0;
            opacity: 0;
        }
        to {
            width: 100%;
            opacity: 1;
        }
    }

    @keyframes appear {
        from{
            opacity: 0;
        }
        to{
            opacity: 1;
        }
    }
  
    @media screen and (min-width: 768px) {
        .container{
            &-title{
                display: initial;
                justify-content: initial;
                padding: rem(0) rem(0) rem(40) rem(120);
            }
        }
    }

    @media screen and (min-width:1200px) {
        .container{
  
            &-title{
                padding-bottom: rem(40);
            }

            :nth-child(3){
                margin-top: rem(80);
        }
    }
}


</style>