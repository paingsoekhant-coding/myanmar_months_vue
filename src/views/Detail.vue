<script setup>
import Flower from "@/components/Flower.vue";
import Footer from "@/components/Footer.vue";
import Butterfly from "@/components/Butterfly.vue";
import MonthDetail from "@/components/MonthDetail.vue";
</script>


<template>
  <div class="container p-7">
    <div class="row">
      <Butterfly></Butterfly>
      <Flower></Flower>
      <div class="">
        <h1 class="text-2xl text-center m-4 antialiased font-mono masked-text">
          Myanmar Months
        </h1>
      </div>
    </div>

    <div class="row flex justify-center">
      <MonthDetail></MonthDetail>
    </div>
    <div class="flex justify-center">
      <Footer></Footer>
    </div>

    <Flower></Flower>
    <Butterfly></Butterfly>
  </div>
</template>


<style>
</style>