# Summary

This is a water sensor using a microcontroller, Arduino, WiFi, and MQTT.

# Circuit

The microcontroller development board is an ESP8266 based NodeMCU v2.  Other ESP8266 boards will likely work with appropriate changes to the GPIO pins used.

The water detection input to the microcontroller consists of an NPN transistor common emitter amplifier.  The collector output goes through a current limiting resistor to a GPIO pin that is pulled high via an external resistor.

The input to the base is from a positive voltage PIN through alligator clips holding two layers of paper.  When the paper gets wet it conducts and provides a small positive voltage to the base of the transistor.  The amplifier inverts the signal, bringing the GPIO input low.

![Schematic](https://raw.githubusercontent.com/superfrink/water-sensor/master/electronics/water-sensor/water-sensor-schematic.png)

# Code

The program starts by reading the GPIO pin.  If water is detected then WiFi is turned on and a message sent to an MQTT broker.  Regardless of water detected, the program sleeps for several seconds.

# Power Considerations

The power source used in the application was an 18650 cell with a 5 V boost converter.  The need was for it to run for a few days.  A couple things were done to extend the run-time of the battery.

* Deep sleep is used.
* WiFi is not turned on and the MQTT message is not sent unless there is water.

Typical power efficiency techniques for the ESP8266 development boards can be applied where needed by the application.

Instead of checking periodically the transistor could be used to connect power to the microcontroller.

# Pending Improvements

* Use additional GPIO pins and jumpers to configure the sleep time.
* Store multiple samples in RTC RAM and send them periodically if there is no water.  Send immediately if there is water.
* Measure the 18650 voltage (before the boost converter) via the analog input pin and a voltage divider.  Include this value in the MQTT messages.
