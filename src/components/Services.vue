<template>
  <section id="services">
    <h2>Our Services</h2>
    <div class="services-container">
      <div class="service">
        <h3>Service One</h3>
        <p>Description of service one, highlighting its benefits and features.</p>
      </div>
      <div class="service">
        <h3>Service Two</h3>
        <p>Description of service two, highlighting its benefits and features.</p>
      </div>
      <div class="service">
        <h3>Service Three</h3>
        <p>Description of service three, highlighting its benefits and features.</p>
      </div>
    </div>
  </section>
</template>

<script setup>
</script>

<style scoped>
.services-container {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}

.service {
  flex: 1 1 30%;
  margin: 1rem;
  padding: 1rem;
  border: 1px solid #ccc;
  border-radius: 8px;
  text-align: center;
}
</style>