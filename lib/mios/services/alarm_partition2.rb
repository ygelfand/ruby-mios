module MiOS
  module Services
    module AlarmPartition2

      URN = 'urn:micasaverde-com:serviceId:AlarmPartition2'

      def arm!(mode="Armed", async=false, options = {} , &block)
        set(URN, 'RequestArmMode', {'State' => mode, 'PINCode' => options[:pin] }, async, &block)
      end

      def disarm!(pin, async=false, &block)
        arm!('Disarmed', async, pin: pin, &block)
      end
    
      def panic!(mode='Fire', async=false, &block)
        set(URN, 'RequestPanicMode', {'State' => mode}, async, &block)
      end
      def armed?
        value_for(URN, 'ArmMode', as: String) == 'Armed'
      end
      def disarmed?
        !armed?
      end
    end
  end
end
