module Seory
  module PageCondition
    class ParamsCondition
      def self.supposable?(condition_object)
        condition_object.is_a?(Hash)
      end

      def initialize(params)
        @params = params
      end

      def match?(controller)
        @params.all? {|k, v| controller.params[k] == v }
      end
    end
  end
end
