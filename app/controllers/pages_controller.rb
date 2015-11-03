class PagesController < ApplicationController
  def home
    @slider_items = Slider.visible
    @contact = Contact.new
    @team = Team.all
    @products = Product.visible
    @about_us = StaticPage.about.visible.first
  end

  def contact_send
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: I18n.t('contact.form.msg.succes') }
        format.json { render json: I18n.t('contact.form.msg.succes'), status: :created, location: root_path }
        format.js { render json: I18n.t('contact.form.msg.succes'), status: :created, location: root_path }
      else
        format.html { render action: "home" }
        format.json { render json: @contact.errors, status: :internal_server_error }
        format.js { render json: @contact.errors, status: :internal_server_error }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :surname, :email, :phone, :message)
  end
end
