import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ContactView from '../views/ContactView.vue'
import AddService from '../views/AddService.vue'
import MentalHealthSubstanceAbuse from '../views/MentalHealthSubstanceAbuseView.vue'
import HealthcareView from '../views/HealthcareView.vue'
import IdentificationView from '../views/IdentificationView.vue'
import EmploymentView from '../views/EmploymentView.vue'
import VeteranView from '../views/VeteranView.vue'
import OutreachView from '../views/OutreachView.vue'
import YouthView from '../views/YouthView.vue'
import LegalView from '../views/LegalView.vue'
import EvictionView from '../views/EvictionView.vue'
import FreeMealsView from '../views/FreeMealsView.vue'
import ClothingHouseholdView from '../views/ClothingHouseholdView.vue'
import AdditionalResourcesView from '../views/AdditionalResourcesView.vue'
import AssistanceView from '../views/AssistanceView.vue'
import EditService from '../views/EditService.vue'

Vue.use(VueRouter)

const routes = [

  {
    path: '/',
    name: 'home',
    component: HomeView
  },

  {
    path: '/contact',
    name: 'contact',
    component: ContactView
  },

  {
    path: '/add',
    name: 'add',
    component: AddService
  },

  {
    path: '/editService',
    name: 'editService',
    component: EditService
  },

  {
    path: '/assistance',
    name: 'assistance',
    component: AssistanceView
  },

  {
    path: '/mental_substance',
    name: 'MentalHealthSubstanceAbuse',
    component: MentalHealthSubstanceAbuse
  },
  {
    path: '/healthcare',
    name: 'Healthcare',
    component: HealthcareView
  },
  {
    path: '/identification',
    name: 'Identification',
    component: IdentificationView
  },
  {
    path: '/employment',
    name: 'Employment',
    component: EmploymentView
  },
  {
    path: '/veteran',
    name: 'Veteran',
    component: VeteranView
  },
  {
    path: '/outreach',
    name: 'Outreach',
    component: OutreachView
  },
  {
    path: '/youth',
    name: 'Youth',
    component: YouthView
  },
  {
    path: '/legal',
    name: 'Legal',
    component: LegalView
  },
  {
    path: '/eviction',
    name: 'Eviction',
    component: EvictionView
  },
  {
    path: '/meals',
    name: 'meals',
    component: FreeMealsView
  },
  {
    path: '/clothing_household',
    name: 'ClothingHousehold',
    component: ClothingHouseholdView
  },
  {
    path: '/additional_resources',
    name: 'AdditionalResources',
    component: AdditionalResourcesView
  },


]

// eslint-disable-next-line no-new
const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
