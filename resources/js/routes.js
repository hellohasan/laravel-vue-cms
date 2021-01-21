export const routes = [
  /* authentication routes */
  {
    path: "/login",
    component: require("./components/Auth/Login").default,
    name: "login"
  },
  {
    path: "/register",
    component: require("./components/Auth/Register").default,
    name: "register"
  },
  {
    path: "/forget",
    component: require("./components/Auth/Forget").default,
    name: "forget"
  },
  
  /* After authentication route list */
  {
    path: "/dashboard",
    name: "dashboard",
    component: () =>
      import(/*webpackChunkName: "dashboard"*/ "./components/Dashboard"),
    meta: {
      requireAuth: true
    }
  },
  {
    path: "/test-component",
    name: "test-component",
    component: () =>
      import(/*webpackChunkName: "test"*/ "./components/TestComponent"),
    meta: {
      requireAuth: true
    }
  },
  {
    path: "/profile",
    name: "profile",
    component: () => import(/*webpackChunkName: "profile"*/ "./components/Profile"),
    meta: {
      requireAuth: true
    }
  },
  {
    path: "/basic-setting",
    name: "basic-setting",
    meta: {requireAuth: true},
    component: require("./components/Settings/Basic").default
  },
  {
    path: "/email-setting",
    name: "email-setting",
    meta: {requireAuth: true},
    component: () => import(/*webpackChunkName: "profile"*/ "./components/Settings/Email"),
  },
  {
    path: "/email-template",
    name: "email-template",
    meta: {requireAuth: true},
    component: () => import(/*webpackChunkName: "profile"*/ "./components/Settings/EmailTemplate"),
  },
  {
    path: "/sms-setting",
    name: "sms-setting",
    meta: {requireAuth: true},
    component: () => import(/*webpackChunkName: "profile"*/ "./components/Settings/Sms"),
  },
  {
    path: "/image-setting",
    name: "image-setting",
    meta: {requireAuth: true},
    component: () => import(/*webpackChunkName: "profile"*/ "./components/Settings/ImageSetting"),
  },
  
  {
    path: "/users",
    component: require("./components/Users").default,
    name: "users",
    meta: {requireAuth: true}
  },
  
  {
    path: "/roles",
    component: require("./components/role/Roles").default,
    name: "roles",
    meta: {requireAuth: true, roles: ["Super Admin"]}
  },
  {
    path: "/permission",
    component: require("./components/permission/Permission").default,
    name: "permission",
    meta: {requireAuth: true, roles: ["Super Admin"]}
  },
  
  {
    path: "/customers",
    component: require("./components/customer/Customer").default,
    meta: {
      requireAuth: true
    },
    children: [
      {
        path: "/",
        component: require("./components/customer").default
      },
      {
        path: "add",
        component: require("./components/customer/Add").default
      },
      {
        path: ":id",
        component: require("./components/customer/Show").default
      }
    ]
  },
  
  /* 404 Page component */
  {path: "/unauthorize", component: require("./components/503").default},
  {path: "*", component: require("./components/404").default}
];
