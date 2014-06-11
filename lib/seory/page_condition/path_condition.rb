module Seory
  module PageCondition
    class PathCondition
      def initialize(path, exact_match = false)
        @path        = path
        @exact_match = exact_match
      end

      def match?(controller)
        controller.request.fullpath.start_with?(@path)
      end
    end
  end
end
