<template>
  <section class="hero">
    <div class="hero-content">
      <h1>Welcome to Our Company</h1>
      <p>Your success is our mission. Discover our services and how we can help you achieve your goals.</p>
      <router-link to="/contact" class="cta-button">Get Started</router-link>
    </div>
  </section>
</template>

<script setup>
</script>

<style scoped>
.hero {
  background-image: url('@/assets/images/hero-background.jpg');
  background-size: cover;
  background-position: center;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  text-align: center;
}

.hero-content {
  max-width: 600px;
}

.cta-button {
  padding: 10px 20px;
  background-color: #007bff;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  transition: background-color 0.3s;
}

.cta-button:hover {
  background-color: #0056b3;
}
</style>