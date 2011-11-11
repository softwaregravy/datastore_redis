module DatastoreRedis
  class RedisStringsController < ApplicationController
    # GET /redis_strings
    # GET /redis_strings.json
    def index
      @redis_strings = RedisString.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @redis_strings }
      end
    end
  
    # GET /redis_strings/1
    # GET /redis_strings/1.json
    def show
      @redis_key = params[:id]
      @redis_value = RedisString.find(@redis_key)
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @redis_value }
      end
    end
  
    # GET /redis_strings/new
    # GET /redis_strings/new.json
    def new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: ''}
      end
    end
  
    # GET /redis_strings/1/edit
    def edit
      @redis_key = params[:id]
      @redis_value = RedisString.find(@redis_key)
    end
  
    # POST /redis_strings
    # POST /redis_strings.json
    def create
      RedisString.create(params['redis_key'], params['redis_value'])
  
      respond_to do |format|
          format.html { redirect_to redis_string_path(params['redis_key']),  notice: 'Redis string was successfully created.' }
          format.json { render json: params['redis_value'], status: :created, location: @redis_string }
      end
    end
  
    # PUT /redis_strings/1
    # PUT /redis_strings/1.json
    def update
      @redis_string = RedisString.find(params[:id])
  
      respond_to do |format|
        if @redis_string.update_attributes(params[:redis_string])
          format.html { redirect_to redis_string_path(@redis_string), notice: 'Redis string was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @redis_string.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /redis_strings/1
    # DELETE /redis_strings/1.json
    def destroy
      @redis_key = params[:id]
      RedisString.destroy(@redis_key)
  
      respond_to do |format|
        format.html { redirect_to redis_strings_url }
        format.json { head :ok }
      end
    end
  end
end
