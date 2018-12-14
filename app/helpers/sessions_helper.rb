module SessionsHelper

    def log_in(msisdn)
        session[:msisdn] = msisdn
    end

    def current_user
        if session[:msisdn]
          @current_user ||= session[:msisdn]
        end
      end

      def logged_in?
        !current_user.nil?
      end
end
