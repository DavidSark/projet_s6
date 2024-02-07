<script setup>
import { client } from '@/utils/axios'

const planeteData = ref([]);
const currentIndex = ref(0);
const updateCurrentIndex = (newIndex) => {
    currentIndex.value = newIndex;
};

onBeforeMount(async () => {
    try {
        const response = await client.get('/planete');
        planeteData.value = response.data;
    } catch (error) {
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
        <div class="bottom" v-if="planeteData.length > 0">
            <div class="atmosphere">
                <h2>atmosphere</h2>
                <p>{{ planeteData[currentIndex].atmosphere }}</p>
            </div>
            <div class="population">
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
.parent {
    position: relative;

    .container {
        display: flex;
        flex-direction: column-reverse;
        position: relative;
        &-stars {
            width: 100%;
            height: rem(900);
            overflow: hidden;
            position: absolute;
        }

        &-left {
            position: absolute;
            top: 0;
            color: $white;
            width: 15%;
            padding: rem(20) rem(0) rem(0) rem(50);

            a {
                color: white;
                text-decoration: none;
                font-weight: 200;
                font-size: rem(10);
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
        }

        &-middle {
            p {
                font-size: rem(10); 
            }
        }

        &-right {
            margin: rem(80) auto rem(0);
            display: flex;
            justify-content: center;

            img {
                width: 80%;
            }
        }
    }

    .bottom {
        display: none;
    }
}

@media screen and (min-width:425px) {
    .container-right {
        img {
            max-width: rem(500);
        }
    }
}

@media screen and (min-width:1024px) {
    .parent {
        overflow: hidden;

        .container {
            display: flex;
            flex-direction: row;
            gap: rem(20);

            &-stars {
            width: 55%;

        }
            &-left {
                position: initial;
                color: $white;
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
            }

            &-middle {
                .middle_card {
                    height: 99vh;
                    width: initial;
                }
            }

            &-right {
                margin: 0;
                all: initial;
                display: flex;
                justify-content: center;
                align-items: flex-start;
                flex: 1;

                img {
                    all: initial;
                    width: 40vw;
                    margin-top: rem(50);
                }
            }

            
        }
        .bottom {
                display: flex;
                gap: rem(180);
                color: $white;
                font-family: $font-poppins;
                position: absolute;
                bottom: rem(50);
                right: rem(20);

                h2 {
                    font-weight: 100;
                    text-transform: uppercase;
                    letter-spacing: rem(10);
                    font-size: rem(24);
                }

                p {
                    font-weight: 200;
                    color: #EDE6E6;
                    margin-top: rem(10);
                }
            }
    }
}


// .parent{
//     position: relative;
//     overflow: hidden;
//     .container {
//     position: relative;
//     display: flex;
//     height: 100vh;
//     &-stars {
//         width: 60%;
//         height: rem(900);
//         overflow: hidden;
//         position: absolute;
//     }

//     &-left {
//         color: $white;
//         width: 15%;
//         padding: rem(40) rem(0) rem(0) rem(40);

//         a {
//             color: white;
//             text-decoration: none;
//             font-weight: 200;
//             font-size: rem(16);
//             font-family: $font-poppins;

//             .instructions {
//                 border-bottom: 1px solid transparent;
//                 transition: all .4s ease-in;
//                 text-transform: uppercase;
//                 position: relative;
//                 display: inline;
//                 cursor: pointer;

//                 &::after {
//                     content: '';
//                     position: absolute;
//                     left: 0;
//                     bottom: 0;
//                     width: 100%;
//                     height: 1px;
//                     background-color: $white;
//                     transform: scaleX(0);
//                     transform-origin: left;
//                     transition: transform .2s ease-in;
//                 }

//                 &:hover::after {
//                     transform: scaleX(1);
//                 }
//             }
//         }
//         // border: 1px solid red;
//     }

//     &-middle {
//         width: 35%;
//         // border: 1px solid green;
//         .middle_card {
//             display: flex;
//             justify-content: flex-start;
//             margin: 0 auto;
//             padding-top: rem(40);
//         }
//     }

//     &-right {
//         width: 50%;
//         display: flex;
//         align-items: center;
//         justify-content: center;
//         // border: 1px solid orange;
//         }

//     }

//     .bottom{
//         display: flex;
//         gap: rem(180);
//         color: $white;
//         font-family: $font-poppins;
//         position: absolute;
//         bottom: rem(50);
//         right: rem(20);

//         h2{
//             font-weight: 100;
//             text-transform: uppercase;  
//             letter-spacing: rem(10);
//             font-size: rem(24);
//         }
//         p{
//             font-weight: 200;
//             color: #EDE6E6;
//             margin-top: rem(10);
//         }
//     }

// }</style>