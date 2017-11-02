# Company - KORESOL Software LLP
# Website - http://www.koresol.com
# About Company - KORESOL offers end to end web and mobile based customized ecommerce solutions. It has seasoned software programmers, having specialized skills and huge experience in web and mobile iOS and Android application development related technologies.
# What can you do with this code: KORESOL allows you to use the code mentioned within this file to learn and practice the concepts. You are also allowed to use this code within your software projects. However, if you are not allowed to use this code within any type of tutorials, books, ebooks or learnig material, without mentioning refrence to our website => www.koresol.com.
# Author  - Nitin Kore.
# Copyrights © 2017 All Rights Reserved by KORESOL Software LLP.
class ServiceController < ApplicationController
before_action :set_order, only: [:show, :edit, :update, :destroy]	
	def show
	end

	def index
		@services = Service.all
	end

	def myview
		redirect_to :action => 'index'
	end

	def new
		@service = Service.new
	end

	def create

		@service = Service.new(service_params)

	  if @service.save
	      redirect_to :action => 'index'
	  else
	      render :action => 'new'
	  end

	end

	def edit
	end


	def update
		if @service.update(service_params)
			redirect_to :action => 'index'
	    else
			redirect_to request.referrer
	    end
	end

	def destroy
    	@service.destroy
    	redirect_to :action => 'index'
  	end
	
	private
		def set_order
		   @service = Service.find(params[:id])
    	end
		def service_params
		   params.require(:service).permit(:name, :features,  :price, :seller, :seller_website, :description)
		end
end










