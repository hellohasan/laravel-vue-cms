import {setDocumentDirectionPerLocale, setDocumentLang} from "../plugins/document";
import i18n from "../plugins/i18n";
import Cookies from 'js-cookie'
import Swal from "sweetalert2";
import NProgress from 'nprogress';

export function initialize(store, router) {
    
    /* Authentication middleware */
    router.beforeEach((to, from, next) => {
        
        NProgress.start()
        
        const requireAuth = to.matched.some(record => record.meta.requireAuth);
        const currentUser = store.state.currentUser;
    
        document.title = getPageTitle();
        
        const lang = i18n.locale;
        if (lang === 'ar'){
            setDocumentLang(lang)
            setDocumentDirectionPerLocale(lang)
        }

        if(requireAuth && !currentUser){
            next('/login');
        }else if(to.path === '/login' && currentUser){
            next('/dashboard')
        }else if(to.path === '/register' && currentUser){
            next('/dashboard');
        }else if(to.path === '/forget' && currentUser){
            next('/dashboard')
        }else{
            if (canAccess(store, to)) {
                next();
            } else {
                NProgress.done()
                router.push('/unauthorize');
            }
        }
    })
    
    /* Checking api return unauthorized */
    axios.interceptors.response.use(null, (error) => {
        
        if (error.response.status === 401) {
            NProgress.done()
            store.commit('logout');
            router.push('/login');
        }
        
        if (error.response.status === 422) {
            NProgress.done()
        }
        
        if (error.response.status === 500) {
            NProgress.done()
            Swal.fire({
                icon: 'error',
                title: i18n.t('error_alert_title'),
                text: i18n.t('error_alert_text'),
                reverseButtons: true,
                confirmButtonText: i18n.t('ok'),
                cancelButtonText: i18n.t('cancel')
            })
        }
        return Promise.reject(error);
    });

    /* Authentication header for axios */
    if (store.getters.currentUser) {
        setAuthorization(store.getters.currentUser.token);
    }

    router.afterEach(() => {
        // finish progress bar
        NProgress.done()
    });

}

function getPageTitle(){
    let basic = Cookies.getJSON('basic');
    if (basic){
        return basic.title
    }else {
        // let bas = store.state.basicData;
        return '';
    }
}

function canAccess(store, route) {
    if (route.meta) {
        const roles = store.getters && store.state.roles;
        const permissions = store.getters && store.state.permissions;

        let hasRole = true;
        let hasPermission = true;
        if (route.meta.roles || route.meta.permissions) {
            // If it has meta.roles or meta.permissions, accessible = hasRole || permission
            hasRole = false;
            hasPermission = false;
            if (route.meta.roles) {
                hasRole = roles.some(role => route.meta.roles.includes(role));
            }

            if (route.meta.permissions) {
                hasPermission = permissions.some(permission => route.meta.permissions.includes(permission));
            }
        }
        return hasRole || hasPermission;
    }
    // If no meta.roles/meta.permissions inputted - the route should be accessible
    return true;
}

export function setAuthorization(token) {
    axios.defaults.headers.common["Authorization"] = `Bearer ${token}`
}
