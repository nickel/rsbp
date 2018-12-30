# frozen_string_literal: true

require "spec_helper"

module Padel
  module Lighting
    describe StatusChecker do
      it "returns 'on' when time is between 18pm and 22pm" do
        expect(
          described_class.new(time_to_check: Time.current.change(hour: 20)).call
        ).to be described_class::LIGHTING_ON_STATUS
      end

      it "returns 'off' when time is not between 18pm and 22pm" do
        expect(
          described_class.new(time_to_check: Time.current.change(hour: 23)).call
        ).to be described_class::LIGHTING_OFF_STATUS
      end
    end
  end
end
