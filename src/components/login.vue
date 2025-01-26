<template>
  <section class="login">
    <h2>Login</h2>
    <form @submit.prevent="submitForm">
      <div>
        <label for="email">Email:</label>
        <input type="email" id="email" v-model="formData.email" required />
      </div>
      <div>
        <label for="password">Password:</label>
        <input type="password" id="password" v-model="formData.password" required />
      </div>
      <button type="submit">Login</button>
    </form>
  </section>
</template>

<script setup>
import { ref } from 'vue';

const formData = ref({
  email: '',
  password: ''
});

const submitForm = () => {
  // Handle login logic here
  console.log('Login form submitted:', formData.value);
  // Reset form
  formData.value = { email: '', password: '' };
};
</script>

<style scoped>
.login {
  padding: 2rem;
  background-color: #f9f9f9;
  text-align: center;
}

form {
  display: flex;
  flex-direction: column;
}

div {
  margin-bottom: 1rem;
}

label {
  margin-bottom: 0.5rem;
}

input {
  padding: 0.5rem;
  border: 1px solid #ccc;
  border-radius: 4px;
}

button {
  padding: 0.5rem;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  background-color: #0056b3;
}
</style>