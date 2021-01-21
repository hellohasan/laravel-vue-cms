<template>
    <select v-bind:name="name" class="form-control" :multiple="multiple"></select>
</template>

<script>
export default {
    name: "VSelect",
    props:['name','options','value','multiple'],
    mounted() {
        let vm = this
        let select = $(this.$el)
        select
            .select2({
                placeholder: 'Select',
                width: '100%',
                allowClear: true,
                data: this.options
            })
            .on('change', function () {
                vm.$emit('input', select.val())
            })
        select.val(this.value).trigger('change')
    },
    destroyed: function () {
        $(this.$el).off().select2('destroy')
    }
}
</script>

<style scoped>

</style>
