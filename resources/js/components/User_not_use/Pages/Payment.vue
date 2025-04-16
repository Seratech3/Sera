<template>
  <div class="container">
    <h2>Make a Payment</h2>
    <input v-model="amount" type="number" placeholder="Enter Amount" />
    <button @click="processPayment">Pay Now</button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      amount: 100,

      isLoading:false,
      url:'Payment/paid',
    };
  },
  methods: {


    swalFunction(type , text){
          Swal.fire({
                text: text,
                icon: type,
                buttonsStyling: false,
                confirmButtonText: "Ok, got it!",
                customClass: {
                    confirmButton: "btn btn-primary"
                }
            });
        },

 
 
     async processPayment() {

          
          this.isLoading = true;

            axios.post(this.url, { amount: this.amount }).then((response)=>{
                 this.isLoading = false;
                  if (response.data.status === "success") {
                    window.location.href = response.data.payment_url; // توجيه المستخدم لصفحة الدفع
                  }          
            
              }).catch(error => {
                this.isLoading = false;
                   this.swalFunction('error','Error happens')
                });

          
        },




  }
};
</script>

<style scoped>
.container {
  max-width: 400px;
  margin: 50px auto;
  text-align: center;
}

input {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
}

button {
  padding: 10px 20px;
  background: #007bff;
  color: white;
  border: none;
  cursor: pointer;
}
</style>
