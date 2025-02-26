<script setup>
import Butterfly from "@/components/Butterfly.vue";
import Card from "@/components/Card.vue";
import Flower from "@/components/Flower.vue";
import Footer from "@/components/Footer.vue";
</script>


<template>
  <div class="container p-7">
    <div class="row">
      <Butterfly></Butterfly>
      <Flower></Flower>
      <div class="">
        <h1 class="text-4xl text-center m-4 antialiased font-mono masked-text">
          Myanmar Months
        </h1>
      </div>
    </div>

    <div class="row flex flex-wrap justify-around">
      <Card></Card>

      <Footer></Footer>
    </div>
    <Flower></Flower>
    <Butterfly></Butterfly>
  </div>
</template>


<style>
.masked-text {
  font-size: 3rem;
  font-weight: bold;
  background-image: url("https://images.unsplash.com/photo-1732535725600-f805d8b33c9c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
  background-size: 200%; /* Enlarged for smooth animation */
  background-position: 0 50%;
  background-clip: text;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: animate-background 5s infinite alternate linear;
}

@keyframes animate-background {
  0% {
    background-position: 0 50%;
  }
  100% {
    background-position: 100% 50%;
  }
}
</style>