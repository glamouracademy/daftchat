class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :question, :authenticate]

  # GET /users
  # GET /users.json
  def index
    @user = User.new
    @users = User.all
  end

  # GET /users/1/question.json
  def question
    # get question from the user
    q = @user.question
    # package question in json
    # return the json to the browser
    render :json => q.to_json
  end

  # POST /users/authenticate
  def authenticate
    @user_answer = params[:answer]
    if @user.answer_correct?(@user_answer)
      session[:user] = params[:id]
      redirect_to messages_url
    else
      @users = User.all
      @user.errors.add(:answer, "is incorrect! Stop pretending to be #{@user.name}!")
      render action: 'index'
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :question, :answer)
    end
end
