# frozen_string_literal: true

module Padel
  module Lighting
    class StatusChecker
      START_LIGHTING_HOUR = 18
      END_LIGHTING_HOUR   = 22
      LIGHTING_ON_STATUS  = "on"
      LIGHTING_OFF_STATUS = "off"

      def initialize(time_to_check:)
        @time_to_check = time_to_check

        @lighting_start_hour = Time.current.change(hour: START_LIGHTING_HOUR, min: 0, sec: 0)
        @lighting_end_hour   = Time.current.change(hour: END_LIGHTING_HOUR,   min: 0, sec: 0)
      end

      def call
        time_is_between_valid_hours? ? LIGHTING_ON_STATUS : LIGHTING_OFF_STATUS
      end

      private

      attr_accessor :time_to_check, :lighting_start_hour, :lighting_end_hour

      def time_is_between_valid_hours?
        time_to_check.between? lighting_start_hour, lighting_end_hour
      end
    end
  end
end
