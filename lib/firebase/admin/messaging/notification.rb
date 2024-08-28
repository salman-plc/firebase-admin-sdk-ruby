module Firebase
  module Admin
    module Messaging
      # A notification that can be included in a message.
      class Notification
        # @return [String, nil]
        #   Title of the notification.
        attr_accessor :title

        # @return [String, nil]
        #   Body of the notification.
        attr_accessor :body

        # @return [String, nil]
        #   Image url of the notification.
        attr_accessor :image

        # @return [Integer, nil]
        #   Badge count.
        attr_accessor :badge

        # Initializes a {Notification}.
        #
        # @param [String, nil] title
        #   Title of the notification (optional).
        # @param [String, nil] body
        #   Body of the notification (optional).
        # @param [String, nil]
        #   Image url of the notification (optional).
        def initialize(title: nil, body: nil, image: nil, badge: nil)
          self.title = title
          self.body = body
          self.image = image
          self.badge = badge
        end
      end
    end
  end
end
