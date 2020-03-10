Spree::Core::ControllerHelpers::Order.class_eval do
  def current_currency
    # ensure session currency is supported
    #
    if session.key?(:currency) && supported_currencies.map(&:iso_code).include?(session[:currency])
      session[:currency]
    else
      current_store.default_currency
    end
  end
end
