<script setup>

const isAbout = ref(false)

const toggleAbout = () => {
  isAbout.value = !isAbout.value;
};

</script>

<template>
  <div class="container">
    <div class="container_left">
      <img src="/img/journey.png" alt="img">
    </div>

    <div class="container_right">
      <div class="container_right-content" v-if="isAbout === false">

        <div class="container_about">         
          <p class="about" @click="toggleAbout()">About</p>
        </div>
        <h2>Instructions</h2>
        <p class="container_right-content-p">
          Tiramisu chocolate chocolate bar jelly cake tiramisu. Liquorice croissant chocolate bonbon danish gummi bears
          tiramisu marshmallow candy canes. Dessert sesame snaps chocolate carrot cake apple pie caramels gingerbread.
          Wafer dragée bear claw tiramisu donut cookie candy soufflé. Bonbon tiramisu chocolate oat cake apple pie
          brownie. Dragée fruitcake sugar plum cake gummi bears tart jelly-o jelly-o cupcake. Gummies sweet fruitcake
          sweet roll soufflé.
          <br />
          <br />
          Icing pastry icing halvah biscuit danish cheesecake oat cake macaroon. Candy canes candy chocolate cake jelly
          apple pie liquorice. Cupcake lollipop candy bonbon oat cake lemon drops. Bear claw donut jujubes croissant
          icing. Jelly beans donut pie jelly-o donut cake. Gingerbread gummi bears jujubes tart caramels. Jelly-o cake
          gingerbread dragée liquorice cupcake jelly chocolate cake. Wafer marshmallow cotton candy cookie carrot cake
          jelly-o soufflé. Shortbread jelly-o oat cake liquorice bonbon lollipop ice cream bonbon fruitcake.
        </p>
        <MyButton class="button_start" href="/intro">start mission</MyButton>
      </div>


      <div class="container_right-content" v-else>

        <div class="container_about">         
          <p class="about" @click="toggleAbout()">Instructions</p>
        </div>
        <h2>About</h2>
        <p class="container_right-content-p">
          Tiramisu chocolate chocolate bar jelly cake tiramisu. Liquorice croissant chocolate bonbon danish gummi bears
          tiramisu marshmallow candy canes. Dessert sesame snaps chocolate carrot cake apple pie caramels gingerbread.
          Wafer dragée bear claw tiramisu donut cookie candy soufflé. Bonbon tiramisu chocolate oat cake apple pie
          brownie. Dragée fruitcake sugar plum cake gummi bears tart jelly-o jelly-o cupcake. Gummies sweet fruitcake
          sweet roll soufflé.
          <br />
          <br />
          Icing pastry icing halvah biscuit danish cheesecake oat cake macaroon. Candy canes candy chocolate cake jelly
          apple pie liquorice. Cupcake lollipop candy bonbon oat cake lemon drops. Bear claw donut jujubes croissant
          icing. Jelly beans donut pie jelly-o donut cake. Gingerbread gummi bears jujubes tart caramels. Jelly-o cake
          gingerbread dragée liquorice cupcake jelly chocolate cake. Wafer marshmallow cotton candy cookie carrot cake
          jelly-o soufflé. Shortbread jelly-o oat cake liquorice bonbon lollipop ice cream bonbon fruitcake.
        </p>
        <MyButton class="button_start" href="/intro">start mission</MyButton>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.container {
  display: flex;
  flex-direction: column;
  height: 100vh;
  font-family: $font-poppins;

  &_left {
    display: none;
  }

  &_right {
    display: flex;
    flex-direction: column;
    justify-content: center;
    flex: 1;
    border: 1px solid;
    border-image: linear-gradient(to bottom, $white, transparent) 1;
    color: $white;     
    &-content {
      margin: 0 rem(50);
      h2 {
        text-transform: uppercase;
        font-weight: 100;
        font-size: 6.3vw;
        margin: rem(50) rem(0) rem(25);
        display: flex;
        justify-content: center;
      }
      &-p {
        font-weight: 200;
        align-items: center;
        justify-content: center;
        font-size: rem(10);
        line-height: rem(15);
      }
      .button_start {
        margin-top: rem(60);
        display: flex;
        justify-content: flex-start;
        max-width: rem(500);

      }
    }
  }

  &_about{
    display: flex;
    justify-content: flex-end;
    .about {
        padding-bottom: rem(5);
        border-bottom: 1px solid transparent;
        transition: all .4s ease-in;
        font-weight: 200;
        font-size: rem(10);
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


@keyframes border {
  0% {
    width: 0%;
  }

  100% {
    width: 100%;
  }
}

@media screen and (min-width:425px) {
  .container {
    &_right {
      &-content {
        &-p {
          font-size: rem(12);
        }
      }
    }
  }
}


@media screen and (min-width:768px) {
  .container {
    display: flex;
    flex-direction: row;

    &_left {
      display: block;
      background-image: url("/img/fond.jpg");
      background-size: cover;
      background-repeat: no-repeat;
      width: 40%;
      height: 100vh;
      position: relative;

      img {
        position: absolute;
        width: 25vw;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
      }
    }

    &_right {
      &-content {
        &-p {
          font-size: rem(12);
          line-height: rem(20);
        }
      }
    }
  }
}

@media screen and (min-width:1236px) {
  .container {
    &_right {
      &-content {
        max-width: rem(640);
        margin: 0 auto;

        .about {
          font-size: rem(16);
        }

        &-p {
          font-size: rem(16);
          line-height: rem(25);
        }
      }
    }
  }
}



@media screen and (min-width:1440px) {
  .container {
    &_left {
      img {
        width: rem(380);
      }
    }

    &_right {
      &-content {}
    }
  }
}

@media screen and (min-width:1592px) {
  .container {
    &_right {
      &-content {
        h2 {
          font-size: rem(100);
        }
      }
    }
  }
}</style>