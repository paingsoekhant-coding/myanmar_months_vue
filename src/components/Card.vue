<script setup>
import jsonData from "@/assets/MyanmarMonths.json";
import { RouterLink } from "vue-router";
import { ref } from "vue";
const months = ref(jsonData["Tbl_Months"]);
</script>


<template>
  <div
    class="relative flex flex-col my-3 bg-purple-300 shadow-lg border border-slate-200 rounded-lg w-96"
    v-for="month in months"
    :key="month.Id"
  >
    <div class="relative h-56 m-2.5 overflow-hidden text-white rounded-md">
      <img :src="month.ImgUrl" :alt="month.MonthEn" />
    </div>
    <div class="p-4">
      <h6 class="mb-2 text-black text-xl font-semibold">
        {{ month.MonthMm }}
        [{{ month.MonthEn }}]
      </h6>
      <p class="text-black leading-normal font-light">
        <i class="fa-solid fa-feather text-purple-500"></i>
        {{ month.FestivalMm }}
        ({{ month.FestivalEn }})
        <i class="fa-solid fa-feather text-purple-500"></i>
      </p>
    </div>
    <div class="px-4 pb-4 pt-0 mt-2">
      <RouterLink
        :to="{ name: 'detail', params: { id: month.Id } }"
        :id="month.Id"
        class="rounded-md bg-slate-800 py-2 px-4 border border-transparent text-center text-sm text-white transition-all shadow-md hover:shadow-lg focus:bg-slate-700 focus:shadow-none active:bg-slate-700 hover:bg-slate-700 active:shadow-none disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none"
      >
        Read more
      </RouterLink>
    </div>
  </div>
</template>
