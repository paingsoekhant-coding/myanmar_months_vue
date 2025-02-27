<script setup>
import jsonData from "@/assets/MyanmarMonths.json";
import { computed } from "vue";
import { RouterLink } from "vue-router";
import { ref } from "vue";
import Sun from "@/components/Sun.vue";
const months = ref(jsonData["Tbl_Months"]);
</script>

<template >
  <div class="" v-for="month in months" :key="month.Id">
    <div class="flex justify-center items-baseline min-h-screen">
      <div
        class="rounded-2xl shadow-lg p-8"
        v-if="month.Id == this.$route.params.id"
      >
        <router-link to="/"
          ><i
            class="fa-regular fa-circle-left text-2xl mb-6 text-purple-400"
          ></i
        ></router-link>
        <img
          :src="month.FestivelImg"
          alt="Placeholder"
          class="w-80 h-40 rounded-md"
        />
        <div class="flex flex-col justify-center">
          <h2 class="text-2xl font-semibold text-gray-800 mt-4">
            {{ month.MonthMm }}
            {{ month.MonthEn }}
          </h2>
          <span class="mt-4"
            >{{ month.FestivalMm }} ({{ month.FestivalEn }})</span
          >
          <p class="text-gray-600 mt-2">
            {{ month.Description }}
          </p>
          <Sun></Sun>
        </div>
      </div>
    </div>
  </div>
</template>