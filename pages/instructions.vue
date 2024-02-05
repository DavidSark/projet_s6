<template>
  <div class="container">
    <div class="container_left">
      <img src="/img/journey.png" alt="img">
    </div>

    <div class="container_right">
      <div class="container_right-content">
        <h2>Instructions</h2>
        <p>
          Tiramisu chocolate chocolate bar jelly cake tiramisu. Liquorice croissant chocolate bonbon danish gummi bears
          tiramisu marshmallow candy canes. Dessert sesame snaps chocolate carrot cake apple pie caramels gingerbread.
          Wafer dragée bear claw tiramisu donut cookie candy soufflé. Bonbon tiramisu chocolate oat cake apple pie
          brownie. Dragée fruitcake sugar plum cake gummi bears tart jelly-o jelly-o cupcake. Gummies sweet fruitcake
          sweet roll soufflé.
          Icing pastry icing halvah biscuit danish cheesecake oat cake macaroon. Candy canes candy chocolate cake jelly
          apple pie liquorice. Cupcake lollipop candy bonbon oat cake lemon drops. Bear claw donut jujubes croissant
          icing. Jelly beans donut pie jelly-o donut cake. Gingerbread gummi bears jujubes tart caramels. Jelly-o cake
          gingerbread dragée liquorice cupcake jelly chocolate cake. Wafer marshmallow cotton candy cookie carrot cake
          jelly-o soufflé. Shortbread jelly-o oat cake liquorice bonbon lollipop ice cream bonbon fruitcake.</p>
        <MyButton href="/">start mission</MyButton>
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
    flex: 1;
    border: 1px solid;
    border-image: linear-gradient(to bottom, $white, transparent) 1;
    color: $white;


    &-content {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      margin: 0 rem(50);

      h2 {
        text-transform: uppercase;
        font-weight: 100;
        font-size: 6.3vw;
        letter-spacing: rem(10);
        margin: rem(120) rem(0) rem(40);
      }

      p {
        font-weight: 200;
        display: flex;
        justify-content: flex-start;
        align-items: flex-start;
        justify-content: center;
        font-size: rem(10);
        line-height: rem(15)
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
        width: 30vw;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
      }
    }
  }
}

@media screen and (min-width:1440px) {
  .container {
    &_left {
      img {
        width: rem(452);
      }
    }
  }
}</style>