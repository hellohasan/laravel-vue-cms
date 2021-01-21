require("./bootstrap");
import Vue from "vue";
import './components/globals'
require('./plugins/global')
import { initialize } from "./helpers/general";
import i18n from "./plugins/i18n";
require("./helpers/Filter");


/*Vue Meta*/
import Meta from 'vue-meta'
Vue.use(Meta)

/* Vue-router */
import VueRouter from "vue-router";
Vue.use(VueRouter);

/* Vuex for the store */
import Vuex from "vuex";
Vue.use(Vuex);
import StoreData from "./store";
const store = new Vuex.Store(StoreData);

/* Import the route list */
import { routes } from "./routes.js";
const router = new VueRouter({
    routes, // short for `routes: routes`
    mode: "history"
});

/* Custom fire event defined */
window.Fire = new Vue();

import MainApp from "./layouts/MainApp.vue";
import { sync } from "vuex-router-sync";
initialize(store, router);
sync(store, router);

/* main vue is running here */
const app = new Vue({
    el: "#app",
    router,
    store,
    i18n,
    components: {
        MainApp
    }
});
