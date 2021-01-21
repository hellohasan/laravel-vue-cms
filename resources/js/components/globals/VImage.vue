<template>
    <div
        class="base-image-input"
        :style="{ 'background-image': `url(${getSetImage})` }"
        @click="chooseImage"
    >
    <span
        v-if="!haveImage"
        class="placeholder"
    >
        {{custom}}
    </span>
        <input
            class="file-input"
            ref="fileInput"
            type="file"
            :name=inputName
            @input="onSelectFile"
        >
        <slot/>
    </div>
</template>

<script>
export default {
    name: "VImage",
    props:{
        custom:{
            type: String,
            default: 'Choice Image'
        },
        defaultImage: {
            type: String,
            default: "",
        },
        inputName: {
            type: String,
            default: "file",
        },
    },
    data () {
        return {
            setImage: null,
        }
    },
    computed:{
        getSetImage () {
            return this.setImage !== null ? this.setImage : this.defaultImage
        },
        haveImage(){
            return !!this.defaultImage;
        }
    },
    methods: {
        chooseImage () {
            this.$refs.fileInput.click()
        },
        onSelectFile (e) {
            let file = e.target.files[0];
            let reader = new FileReader();
            reader.onloadend = (file) => {
                this.setImage = reader.result
                this.$emit('input', reader.result)
            }
            reader.readAsDataURL(file)
        }
    }
}
</script>

<style scoped>
.base-image-input {
    display: block;
    width: 200px;
    height: 200px;
    cursor: pointer;
    background-size: cover;
    background-position: center center;
}
.placeholder {
    background: #F0F0F0;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #333;
    font-size: 18px;
    border-radius: 5px;
}
.placeholder:hover {
    background: #E0E0E0;
}
.file-input {
    display: none;
}
</style>
