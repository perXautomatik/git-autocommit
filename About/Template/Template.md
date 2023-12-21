*# Template

**Please keep the total length of the tutorial below 25k characters.** You can include code that is linked to a repository. Keep the code snippets in the tutorial short.

## [](https://hackmd.io/@lnu-iot/iot-tutorial#Tutorial-on-how-to-build-a-temperature-and-humidity-sensor "Tutorial-on-how-to-build-a-temperature-and-humidity-sensor")Tutorial on how to build a temperature and humidity sensor

Give a short and brief overview of what your project is about. What needs to be included:

- [x] Title ✅ 2023-08-26
- [ ]  Your name and student credentials (xx666x)
- [x] Short project overview ✅ 2023-08-26
- [x] How much time it might take to do (approximation) ✅ 2023-08-26

### [](https://hackmd.io/@lnu-iot/iot-tutorial#Objective "Objective")Objective

Describe why you have chosen to build this specific device. What purpose does it serve? What do you want to do with the data, and what new insights do you think it will give?

- [x] Why you chose the project ✅ 2023-08-26
- [x] What purpose does it serve ✅ 2023-08-26
- [x] What insights you think it will give ✅ 2023-08-26

### [](https://hackmd.io/@lnu-iot/iot-tutorial#Material "Material")Material

Explain all material that is needed. All sensors, where you bought them and their specifications. Please also provide pictures of what you have bought and what you are using.

- [x] List of material ✅ 2023-08-26
- [x] What the different things (sensors, wires, controllers) do - short specifications ✅ 2023-08-26
- [ ]  Where you bought them and how much they cost

> Example:
> 
> | IoT Thing | For this |
> | --- | --- |
> | Perhaps | a table |
> | is a | jolly good idea? |
> 
> In this project I have chosen to work with the Pycom LoPy4 device as seen in Fig. 1, it’s a neat little device programmed by MicroPython and has several bands of connectivity. The device has many digital and analog input and outputs and is well suited for an IoT project.
> 
> ![LoPy!](https://pycom.io/wp-content/uploads/2018/08/lopySide-1.png) Fig. 1. LoPy4 with headers. [Pycom.io](http://pycom.io/)

### [](https://hackmd.io/@lnu-iot/iot-tutorial#Computer-setup "Computer-setup")Computer setup

How is the device programmed. Which IDE are you using. Describe all steps from flashing the firmware, installing plugins in your favorite editor. How flashing is done on MicroPython. The aim is that a beginner should be able to understand.

- [x] Chosen IDE ✅ 2023-08-26
- [x] How the code is uploaded ✅ 2023-08-26
- [x] Steps that you needed to do for your computer. Installation of Node.js, extra drivers, etc. ✅ 2023-08-26

### [](https://hackmd.io/@lnu-iot/iot-tutorial#Putting-everything-together "Putting-everything-together")Putting everything together

How is all the electronics connected? Describe all the wiring, good if you can show a circuit diagram. Be specific on how to connect everything, and what to think of in terms of resistors, current and voltage. Is this only for a development setup or could it be used in production?

- [ ]  Circuit diagram (can be hand drawn)
- [ ]  \*Electrical calculations

### [](https://hackmd.io/@lnu-iot/iot-tutorial#Platform "Platform")Platform

Describe your choice of platform. If you have tried different platforms it can be good to provide a comparison.

Is your platform based on a local installation or a cloud? Do you plan to use a paid subscription or a free? Describe the different alternatives on going forward if you want to scale your idea.

- [x] Describe platform in terms of functionality ✅ 2023-08-26
- [ ]  \*Explain and elaborate what made you choose this platform

### [](https://hackmd.io/@lnu-iot/iot-tutorial#The-code "The-code")The code

Import core functions of your code here, and don’t forget to explain what you have done! Do not put too much code here, focus on the core functionalities. Have you done a specific function that does a calculation, or are you using clever function for sending data on two networks? Or, are you checking if the value is reasonable etc. Explain what you have done, including the setup of the network, wireless, libraries and all that is needed to understand.

```







import this as that

def my_cool_function():
    print('not much here')

s.send(package)

# Explain your code!
```

### [](https://hackmd.io/@lnu-iot/iot-tutorial#Transmitting-the-data--connectivity "Transmitting-the-data--connectivity")Transmitting the data / connectivity

How is the data transmitted to the internet or local server? Describe the package format. All the different steps that are needed in getting the data to your end-point. Explain both the code and choice of wireless protocols.

- [x] How often is the data sent? ✅ 2023-08-26
- [x] Which wireless protocols did you use (WiFi, LoRa, etc …)? ✅ 2023-08-26
- [x] Which transport protocols were used (MQTT, webhook, etc …) ✅ 2023-08-26
- [ ]  \*Elaborate on the design choices regarding data transmission and wireless protocols. That is how your choices affect the device range and battery consumption.

### [](https://hackmd.io/@lnu-iot/iot-tutorial#Presenting-the-data "Presenting-the-data")Presenting the data

Describe the presentation part. How is the dashboard built? How long is the data preserved in the database?

- [ ]  Provide visual examples on how the dashboard looks. Pictures needed.
- [x] How often is data saved in the database. ✅ 2023-08-26
- [ ]  \*Explain your choice of database.
- [ ]  \*Automation/triggers of the data.

### [](https://hackmd.io/@lnu-iot/iot-tutorial#Finalizing-the-design "Finalizing-the-design")Finalizing the design

Show the final results of your project. Give your final thoughts on how you think the project went. What could have been done in an other way, or even better? Pictures are nice!

- [ ]  Show final results of the project
- [ ]  Pictures
- [ ]  \*Video presentation*