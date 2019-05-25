# ROS_STM32_rosserial
Programming a STM32F3 (Board STM32F303VCTx) for as ros node using stm32_HAL library
Eclipse
Board STM32f3Discovery

Example of a node 'chatter' between PC and STM32:

    ros::NodeHandle nh;
    std_msgs::String str_msg;
    ros::Publisher chatter("chatter", &str_msg);



//inside main

    const char * hello = "Hello World!!";

    int chatter_interval = 1000.0 / 2;
    int chatter_last = HAL_GetTick();



//in while loop:

      if (nh.connected())
      {
          if(HAL_GetTick() - chatter_last > chatter_interval)
          {
              str_msg.data = hello;
              chatter.publish(&str_msg);
              chatter_last = HAL_GetTick();
          }
      }

      nh.spinOnce();
