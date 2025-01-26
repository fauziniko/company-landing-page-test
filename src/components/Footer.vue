Here are the contents for the file `/company-landing-page/company-landing-page/src/components/Footer.vue`:

<template>
  <footer>
    <div class="footer-content">
      <p>&copy; {{ new Date().getFullYear() }} Your Company Name. All rights reserved.</p>
      <div class="social-links">
        <a href="#" target="_blank">Facebook</a>
        <a href="#" target="_blank">Twitter</a>
        <a href="#" target="_blank">LinkedIn</a>
      </div>
    </div>
  </footer>
</template>

<script setup>
</script>

<style scoped>
.footer-content {
  text-align: center;
  padding: 1rem;
  background-color: #f8f9fa;
}

.social-links a {
  margin: 0 10px;
  text-decoration: none;
  color: #007bff;
}

.social-links a:hover {
  text-decoration: underline;
}
</style>