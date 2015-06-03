class SplashController < ApplicationController

  def index
    # binding.pry
  end

  def stuff
    redirect_to paypal_url("/")
  end

  private

  def paypal_url(return_path)
    values = {
        business: "bpwalford-facilitator@gmail.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        amount: 12.34,
        item_name: "songs item",
        item_number: 7676,
        quantity: '1'
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end
