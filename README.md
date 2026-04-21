<h1 align="left">
  <br>
  <img src="./img/hei-en.png" alt="HEI-Vs Logo" width="350">
  <br> Advanced Automation Lab 03
  <br>
</h1>

Author: [Cédric Lenoir](mailto:cedric.lenoir@hevs.ch)

required : UA Expert client

# Base
This lab is based on [Rob AAut, see this repo for details](https://github.com/hei-synd-aaut/rob_lab_01_2026).

# Controlling equipment via OPC-UA

:warning: <b style='color:red;'>Using OPC-UA, you will have to enter manually velocity and acceleration, be carfull with that</b>

- X Range about -250 to 250 [mm]
- Y Range about -150 to 150 [mm]
- Z Range about -100 to 100 [mm]
- Velocity: about 0.1 [m/s]
- Acceleration: about 1 [m/s2]

## Preamble
This lab was developped for a robotic lab with camera calibration using a QR-Code. Most of the files on this repository are not directly dedicated to this lab. See [Robotics for details](./Robotics).

## Version
CtrlX PLC 3.6.3

## S-88, *IEC 61512*, A few reminders

Let's consider a unit composed of several pieces of equipment, at least one robot, as shown here. There are several ways to control the equipment modules.

Either, within an integrated machine, commands are sent to the machine, which then manages its equipment.

That is to say: the unit is controlled using a procedure composed of operations, themselves composed of phases.
  :heavy_exclamation_mark:  Or, it is controlled using operations.
  :heavy_exclamation_mark:  Or, it is controlled using phases.

:bangbang: In this situation, a command is sent to the machine, and it is the machine, the Unit, that will send the commands to the equipment.

```mermaid
classDiagram
Unit Procedure *-- Operation
Operation *-- Phase

Unit Procedure --> Unit : Combined with
Operation --> Unit : or Combined with
Phase --> Unit : or Combined with

Unit *-- Equipment Module

```

:bulb: *Associations represent relationships between the objects of one class and the objects of another.*

## Goal of the lab

Either we have a system where the equipment modules no longer depend on the machine, Unit, but can be controlled directly from an external system.

```mermaid
classDiagram
Unit Procedure *-- Operation
Operation *-- Phase

Phase --> Equipment Module : Combined with

Unit *-- Equipment Module

```

:bulb: Equipment modules may execute equipment phases but they do not have the capability of executing higher level procedural elements.

In this lab, we suppose that we want to control diretctly the Equipment Modules using OPC-UA. To test the functionalities, we will use Node-RED with the [node-red-contrib-opcua palette](https://flows.nodered.org/node/node-red-contrib-opcua).

### List of methods for the robot

- Methods include positions in X,Y,Z, velocity, acceleration and jerk.
- Methods include Pick with nest number.
- Methods inclue Place with nest number.
- Method for the Gripper.

Read positions
Write a single parameter
Read a structure
Write a structure

Store / Restore.

## About Set Get
Try to use OPC UA to read/write attribute.

With 

```iecst
{attribute 'monitoring':= 'variable'}
PROPERTY Group_Disabled : BOOL
```

With

```iecst
{attribute 'monitoring':= 'call'}
PROPERTY Group_Disabled : BOOL
```

## About WSTRING
What does WSTRING means ?

Can you display that ``안녕하세요`` in your OPC-UA Test Tool ?
And with Node-RED ?

<!-- End of file>