// Admin Pages
import AuthLayout from './components/Website/auth/AuthLayout.vue';
import LoginAdmin from './components/Website/adminAuth/login.vue';
import Dashboard from './components/Dashboard/pages/Dashboard.vue';

import Admins from './components/Dashboard/pages/UserManagement/Admins.vue';
import Users from './components/Dashboard/pages/UserManagement/Users.vue';
import Roles from './components/Dashboard/pages/UserManagement/Roles.vue';
import Permissions from './components/Dashboard/pages/UserManagement/Permissions.vue';

// HR Pages
import Department from './components/Dashboard/pages/HR/Department.vue';
import Section from './components/Dashboard/pages/HR/Section.vue';
import Position from './components/Dashboard/pages/HR/Position.vue';
import Employee from './components/Dashboard/pages/HR/Employee.vue';
import EmployeePosition from './components/Dashboard/pages/HR/EmployeePosition.vue';
import PositionHistory from './components/Dashboard/pages/HR/PositionHistory.vue';

// Master Data Pages
import ItemsCategories from './components/Dashboard/pages/MasterData/ItemsCategories.vue';
import ItemsObjects from './components/Dashboard/pages/MasterData/ItemsObjects.vue';
import ResumeTemplate from './components/Dashboard/pages/MasterData/ResumeTemplate.vue';

// Settings Pages
import Page from './components/Dashboard/pages/Setting/Page.vue';
import Edit from './components/Dashboard/pages/Setting/Edit.vue';
import Contact from './components/Dashboard/pages/Setting/Contact.vue';



export default [
 {
        path: '/:locale/admin/login',
        component: AuthLayout,
        children: [
            { path: '', component: LoginAdmin, meta: { hideHeaderFooter: true } }
        ]
    },

    // Admin Dashboard Routes
    { 
        path: '/:locale/dashboard', 
        component: Dashboard, 
        meta: { requiresAuth: true, role: 'admin' } 
    },
    { 
        path: '/:locale/dashboard/user_management/users', 
        component: Users, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Users Management' } 
    },
    { 
        path: '/:locale/dashboard/user_management/admins', 
        component: Admins, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Admins Management' } 
    },
    { 
        path: '/:locale/dashboard/user_management/roles', 
        component: Roles, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Roles Management' } 
    },
    { 
        path: '/:locale/dashboard/user_management/permissions', 
        component: Permissions, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Permissions Management' } 
    },

    // HR Routes
    { 
        path: '/:locale/dashboard/HR/departments', 
        component: Department, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Departments Management' } 
    },
    { 
        path: '/:locale/dashboard/HR/sections', 
        component: Section, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Sections Management' } 
    },
    { 
        path: '/:locale/dashboard/HR/positions', 
        component: Position, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Positions Management' } 
    },
    { 
        path: '/:locale/dashboard/HR/employees', 
        component: Employee, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Employees Management' } 
    },
    { 
        path: '/:locale/dashboard/HR/employee_positions', 
        component: EmployeePosition, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Employee Positions Management' } 
    },
    { 
        path: '/:locale/dashboard/HR/position_history', 
        component: PositionHistory, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Position History Management' } 
    },

    // Master Data Routes
    {
        path: '/:locale/dashboard/master_data/category/:category',
        component: ItemsCategories,
        props: true,
        meta: { requiresAuth: true, role: 'admin' },
        beforeEnter: (to, from, next) => {
            to.meta.breadcrumb = `${to.params.category.charAt(0).toUpperCase() + to.params.category.slice(1)} Management`;
            next();
        }
    },
    { 
        path: '/:locale/dashboard/master_data/resume_template', 
        component: ResumeTemplate, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Resume Templates Management' } 
    },
    {
        path: '/:locale/dashboard/master_data/:object',
        component: ItemsObjects,
        props: true,
        meta: { requiresAuth: true, role: 'admin' },
        beforeEnter: (to, from, next) => {
            to.meta.breadcrumb = `${to.params.object.charAt(0).toUpperCase() + to.params.object.slice(1)} Management`;
            next();
        }
    },

    // Settings Routes
    { 
        path: '/:locale/dashboard/setting/pages', 
        component: Page, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Pages Management' } 
    },
    { 
        path: '/:locale/dashboard/setting/edit', 
        component: Edit, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Settings Management' } 
    },


    { 
        path: '/:locale/dashboard/setting/contact', 
        component: Contact, 
        meta: { requiresAuth: true, role: 'admin', breadcrumb: 'Contact Management' } 
    },
];