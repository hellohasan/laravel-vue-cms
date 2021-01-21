<template>
    <div>
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
                </li>
            </ul>
            <!-- SEARCH FORM -->
            <form class="form-inline ml-3">
                <div class="input-group input-group-sm">
                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                    <div class="input-group-append">
                    <button class="btn btn-navbar" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                    </div>
                </div>
            </form>
            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">

                <li v-if="Object.keys(locales).length > 1" class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle font-weight-bold" href="#" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-globe"></i> {{ locales[locale] }}
                    </a>
                    <div class="dropdown-menu">
                        <a v-for="(value, key) in locales" :key="key" class="dropdown-item" href="#"
                           @click.prevent="setLocale(key)">
                            {{ value }}
                        </a>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#"><i class="fas fa-th-large"></i></a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="#" class="brand-link">
                <img :src="site_logo" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Vue Admin</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img :src="authUser.photo" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">{{ authUser.name }}</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                    <li class="nav-item">
                        <router-link to="/dashboard" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt cyan"></i>
                            <p>{{ $t('Dashboard')}}</p>
                        </router-link>
                    </li>

                    <li class="nav-item">
                        <router-link to="/customers" class="nav-link">
                            <i class="nav-icon fas fa-users cyan"></i>
                            <p>{{$t('Customers')}}</p>
                        </router-link>
                    </li>

                    <li class="nav-item">
                        <router-link to="/basic-setting" class="nav-link">
                            <i class="nav-icon fas fa-sliders-h cyan"></i>
                            <p>{{$t('basic_setting')}}</p>
                        </router-link>
                    </li>

                    <li class="nav-item has-treeview">
                        <a href="#!" class="nav-link">
                            <i class="nav-icon fas fa-cogs"></i>
                            <p>{{$t('App_setting')}}<i class="fas fa-angle-left right"></i></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none;">
                            <li class="nav-item">
                                <router-link to="/email-setting" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ $t('Email_setting') }}</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link to="/email-template" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ $t('Email_template') }}</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link to="/sms-setting" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ $t('Sms_setting') }}</p>
                                </router-link>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <router-link to="/image-setting" class="nav-link">
                            <i class="nav-icon fas fa-images cyan"></i>
                            <p>{{$t('image_setting')}}</p>
                        </router-link>
                    </li>

                    <li class="nav-item">
                        <router-link to="/profile" class="nav-link">
                            <i class="nav-icon fas fa-user green"></i>
                            <p>{{$t('profile')}}</p>
                        </router-link>
                    </li>

                    <li class="nav-item has-treeview">
                        <a href="#!" class="nav-link">
                            <i class="nav-icon fas fa-cogs"></i>
                            <p>{{$t('Management')}}<i class="fas fa-angle-left right"></i></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none;">
                            <li class="nav-item">
                                <router-link to="/users" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ $t('Manage User') }}</p>
                                </router-link>
                            </li>
                        </ul>
                    </li>


                    <li v-role="['Super Admin']" class="nav-item has-treeview">
                        <a href="" class="nav-link">
                            <i class="nav-icon fas fa-tools"></i>
                            <p>{{$t('Role & Permission')}}<i class="fas fa-angle-left right"></i></p>
                        </a>
                        <ul class="nav nav-treeview" style="display: none;">
                            <li class="nav-item">
                                <router-link to="/roles" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ $t('Manage Role')}}</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link to="/permission" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ $t('Manage Permission') }}</p>
                                </router-link>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a href="" @click.prevent="logout" class="nav-link">
                            <i class="nav-icon fas fa-sign-out-alt yellow"></i>
                            <p>{{$t('logout')}}</p>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Main content -->
            <div class="content mt-4">
                <div class="container-fluid">
                    <transition name="fade" mode="out-in">
                    <router-view></router-view>
                    </transition>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- To the right -->
            <div class="float-right d-none d-sm-inline">Version 1.0.1</div>
            <!-- Default to the left -->
            <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
        </footer>
    </div>
</template>

<script>
import permission from '../directive/permission/index.js'
import role from '../directive/role/index.js'
import {
    setDocumentDirectionPerLocale,
    setDocumentLang
} from "../plugins/document"

export default {

    directives: { permission, role },
    data(){
        return{
            site_logo : process.env.MIX_APP_URL+'img/logo.png'
        }
    },
    methods:{
        logout(){
            this.$store.commit('logout');
            this.$router.push({path:'/login'})
        },
        setLocale (locale) {
            if (this.$i18n.locale !== locale) {
                this.$i18n.locale = locale;
                let lang = this.$i18n.locale
                setDocumentLang(lang)
                setDocumentDirectionPerLocale(lang)
                this.$store.dispatch('setLocale', locale )
            }
        }
    },
    computed:{
        authUser(){
            return this.$store.getters.currentUser;
        },
        locale(){
            return this.$store.getters.locale
        },
        locales() {
            return this.$store.getters.locales
        }
    }
}
</script>

<style lang="scss">

.fade-enter, .fade-leave-to{
    opacity: 0;
    transform: translateX(2em);
}
.fade-enter-active, .fade-leave-active{
    transition: all .5s ease;
}
</style>
