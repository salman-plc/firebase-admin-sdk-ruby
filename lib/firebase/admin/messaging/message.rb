module Firebase
  module Admin
    module Messaging
      # A message that can be sent via Firebase Cloud Messaging.
      #
      # Contains payload information as well as recipient information. In particular, the message must contain exactly
      # one of token, topic or condition fields.
      class Message
        # @return [Hash<String, String>, nil]
        #   A hash of data fields (optional). All keys and values must be strings.
        attr_accessor :data

        # @return [Notification, nil]
        #   A {Notification} (optional).
        attr_accessor :notification

        # @return [AndroidConfig, nil]
        #   An {AndroidConfig} (optional).
        attr_accessor :android

        # @return [APNSConfig, nil]
        #   An {APNSConfig} (optional).
        attr_accessor :apns

        # @return [FCMOptions, nil]
        #   An {FCMOptions} (optional).
        attr_accessor :fcm_options

        # @return [String, nil]
        #   Registration token of the device to which the message should be sent (optional).
        attr_accessor :token

        # @return [String, nil]
        #   Name of the FCM topic to which the message should be sent (optional). Topic name may contain the `/topics/`
        #   prefix.
        attr_accessor :topic

        # @return [String, nil]
        #   The FCM condition to which the message should be sent (optional).
        attr_accessor :condition
        
        #   A hash of data fields (optional). All keys and values must be strings.
        attr_accessor :badge
        
        # Initializes a {Message}.
        #
        # @param [Hash<String, String>, nil] data
        #   A hash of data fields (optional). All keys and values must be strings.
        # @param [Notification, nil] notification
        #   A {Notification} (optional).
        # @param [AndroidConfig, nil] android
        #   An {AndroidConfig} (optional).
        # @param [APNSConfig, nil] apns
        #   An {APNSConfig} (optional).
        # @param [FCMOptions, nil] fcm_options
        #   An {FCMOptions} (optional).
        # @param [String, nil] token
        #   A registration token of the device to send the message to (optional).
        # @param [String, nil] topic
        #   The name of the FCM topic to send the message to (optional).
        #   The topic name may contain the `/topics/` prefix.
        # @param [String, nil] condition
        #   The FCM condition to which the message should be sent (optional).
        def initialize(
          data: nil,
          notification: nil,
          android: nil,
          apns: nil,
          fcm_options: nil,
          token: nil,
          topic: nil,
          condition: nil,
          badge: nil
        )
          self.data = data
          self.notification = notification
          self.android = android
          self.apns = apns
          self.fcm_options = fcm_options
          self.token = token
          self.topic = topic
          self.condition = condition
          self.badge = badge
        end
      end
    end
  end
end
