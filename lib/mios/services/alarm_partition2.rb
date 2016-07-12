module MiOS
  module Services
    module AlarmPartition2

      URN = 'urn:micasaverde-com:serviceId:AlarmPartition2'

      def arm!(async=false, &block)
        set(URN, 'RequestArmMode', {'State' => 'Armed' }, async, &block)
      end

      def disarm!(pin, async=false, &block)
        set(URN, 'RequestArmMode', {'State' => 'Disarmed','PINCode' => pin }, async, &block)
      end
    end
  end
end
