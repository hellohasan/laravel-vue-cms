<template>
    <div class="customer-view" v-if="customer">
        <div class="user img">
            <img src="https://softwarezon.com/assets/images/logo.png" alt="">
        </div>
        <div class="user-info">
            <table class="table">
                <tr>
                    <th>Id</th>
                    <td>{{ customer.id }}</td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td>{{ customer.name }}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>{{ customer.email }}</td>
                </tr>
                <tr>
                    <th>Phone</th>
                    <td>{{ customer.phone }}</td>
                </tr>
                <tr>
                    <th>Website</th>
                    <td>{{ customer.website }}</td>
                </tr>
            </table>
            <router-link to='/customers'>All Customer</router-link>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            customer:{}
        }
    },
    created(){
        if(this.customer.length){
            this.customer = this.customer.find((customer) => customer.id == this.$route.params.id);
        }else{
            axios.get(`/api/customers/${this.$route.params.id}`)
            .then((response)=>{
                this.customer = response.data.customer;
            })
        }
    }
}
</script>

<style>
    .cutomer-view{
        display: flex;
        align-items: center;
    }
    .user-img{
        flex:1;
    }
    .user-img img{
        max-width: 160px;
    }
    .user-info{
        flex: 3;
        overflow-x: scoll;
    }
</style>
