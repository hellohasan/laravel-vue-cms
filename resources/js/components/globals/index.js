import Vue from 'vue';
import Card from './Card';
import Button from './Button';
import VImage from "./VImage";
import ImageInput from "./ImageInput";
import {HasError, AlertError, AlertSuccess, Form} from 'vform'

window.Form = Form;
// Components that are registered globaly.
[
  Card,
  Button,
  VImage,
  ImageInput,
  HasError,
  AlertError,
  AlertSuccess
].forEach(Component => {
  Vue.component(Component.name, Component)
})

Vue.component("pagination", require("laravel-vue-pagination"));
