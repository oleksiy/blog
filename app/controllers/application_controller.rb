# frozen_string_literal: true

# track metrics in before action, so they are created at the start of the app
class ApplicationController < ActionController::Base
  before_action do
    # increment total requests counter supplied by appropriate actions and controller it's occurring in
    HTTP_REQUESTS_TOTAL.increment(labels: { controller: controller_name, action: action_name })
  end
end
