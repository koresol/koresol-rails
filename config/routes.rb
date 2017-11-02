# Company - KORESOL Software LLP
# Website - http://www.koresol.com
# About Company - KORESOL offers end to end web and mobile based customized ecommerce solutions. It has seasoned software programmers, having specialized skills and huge experience in web and mobile iOS and Android application development related technologies.
# What can you do with this code: KORESOL allows you to use the code mentioned within this file to learn and practice the concepts. You are also allowed to use this code within your software projects. However, if you are not allowed to use this code within any type of tutorials, books, ebooks or learnig material, without mentioning refrence to our website => www.koresol.com.
# Author  - Nitin Kore.
# Copyrights © 2017 All Rights Reserved by KORESOL Software LLP.
Rails.application.routes.draw do
  resources :products
  resources :lineitems
  resources :orders
  #get 'service/show'

  get 'service/index',to: 'service#index'
  get 'service/myview',to: 'service#myview'
  get 'service/new',to: 'service#new'

  post  'service/create' ,to:  'service#create'
  get  'service/:id'   ,to:   'service#show', :as=> 'service'

  get  'service/:id/edit'   ,to:   'service#edit' , :as=> 'edit_service'
  patch  'service/:id'   ,to:   'service#update' , :as=> 'update_service'
  put  'service/:id'   ,to:   'service#update'
  delete 'service/:id'   ,to:   'service#destroy' , :as=> 'destroy_service'
 
end
