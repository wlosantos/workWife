module Admins

  class RegistersController < AdminsController
    before_action :set_register, only: %i[ show edit update destroy ]

    def index
      @registers = Register.order(:name)
    end

    def show
    end

    def new
      @register = Register.new
    end

    def edit
    end

    def create
      @register = Register.new(register_params)
      if @register.save
        redirect_to @register, notice: "Register was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @register.update(register_params)
        redirect_to @register, notice: "Register was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @register.destroy
      redirect_to registers_url, notice: "Register was successfully destroyed."
    end

    private

      def set_register
        @register = Register.find(params[:id])
      end

      def register_params
        params.require(:register).permit(:name, :date_register, :cpf, :rg, :birth, :type_plan, :status, :parent_id)
      end
  end

end
