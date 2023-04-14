
"use strict";

let ServiceResponseHeader = require('./ServiceResponseHeader.js');
let WebPath = require('./WebPath.js');
let MirLocalPlannerPathTypes = require('./MirLocalPlannerPathTypes.js');
let Devices = require('./Devices.js');
let Device = require('./Device.js');
let ResourcesAcquisition = require('./ResourcesAcquisition.js');
let LocalMapStat = require('./LocalMapStat.js');
let PalletLifterStatus = require('./PalletLifterStatus.js');
let MirExtra = require('./MirExtra.js');
let RobotState = require('./RobotState.js');
let Path = require('./Path.js');
let StampedEncoders = require('./StampedEncoders.js');
let HookData = require('./HookData.js');
let Gpio = require('./Gpio.js');
let HookStatus = require('./HookStatus.js');
let HeightState = require('./HeightState.js');
let JoystickVel = require('./JoystickVel.js');
let TimeDebug = require('./TimeDebug.js');
let PowerBoardMotorStatus = require('./PowerBoardMotorStatus.js');
let AngleMeasurment = require('./AngleMeasurment.js');
let Encoders = require('./Encoders.js');
let Error = require('./Error.js');
let BrakeState = require('./BrakeState.js');
let SoundEvent = require('./SoundEvent.js');
let HookExtendedStatus = require('./HookExtendedStatus.js');
let ExternalRobots = require('./ExternalRobots.js');
let PrecisionDockingStatus = require('./PrecisionDockingStatus.js');
let RobotStatus = require('./RobotStatus.js');
let WorldMap = require('./WorldMap.js');
let SafetyStatus = require('./SafetyStatus.js');
let Serial = require('./Serial.js');
let EncoderTestEntry = require('./EncoderTestEntry.js');
let Pendant = require('./Pendant.js');
let BMSData = require('./BMSData.js');
let GripperState = require('./GripperState.js');
let PlanSegments = require('./PlanSegments.js');
let SkidDetectionStampedFloat = require('./SkidDetectionStampedFloat.js');
let ExternalRobot = require('./ExternalRobot.js');
let UserPrompt = require('./UserPrompt.js');
let Events = require('./Events.js');
let MissionCtrlCommand = require('./MissionCtrlCommand.js');
let SkidDetectionDiff = require('./SkidDetectionDiff.js');
let Event = require('./Event.js');
let ResourcesState = require('./ResourcesState.js');
let Twist2D = require('./Twist2D.js');
let IOs = require('./IOs.js');
let Pose2D = require('./Pose2D.js');
let PlanSegment = require('./PlanSegment.js');
let ResourceState = require('./ResourceState.js');
let MissionCtrlState = require('./MissionCtrlState.js');
let MovingState = require('./MovingState.js');
let Proximity = require('./Proximity.js');
let WorldModel = require('./WorldModel.js');
let RobotMode = require('./RobotMode.js');
let ChargingState = require('./ChargingState.js');
let Trolley = require('./Trolley.js');
let BatteryCurrents = require('./BatteryCurrents.js');

module.exports = {
  ServiceResponseHeader: ServiceResponseHeader,
  WebPath: WebPath,
  MirLocalPlannerPathTypes: MirLocalPlannerPathTypes,
  Devices: Devices,
  Device: Device,
  ResourcesAcquisition: ResourcesAcquisition,
  LocalMapStat: LocalMapStat,
  PalletLifterStatus: PalletLifterStatus,
  MirExtra: MirExtra,
  RobotState: RobotState,
  Path: Path,
  StampedEncoders: StampedEncoders,
  HookData: HookData,
  Gpio: Gpio,
  HookStatus: HookStatus,
  HeightState: HeightState,
  JoystickVel: JoystickVel,
  TimeDebug: TimeDebug,
  PowerBoardMotorStatus: PowerBoardMotorStatus,
  AngleMeasurment: AngleMeasurment,
  Encoders: Encoders,
  Error: Error,
  BrakeState: BrakeState,
  SoundEvent: SoundEvent,
  HookExtendedStatus: HookExtendedStatus,
  ExternalRobots: ExternalRobots,
  PrecisionDockingStatus: PrecisionDockingStatus,
  RobotStatus: RobotStatus,
  WorldMap: WorldMap,
  SafetyStatus: SafetyStatus,
  Serial: Serial,
  EncoderTestEntry: EncoderTestEntry,
  Pendant: Pendant,
  BMSData: BMSData,
  GripperState: GripperState,
  PlanSegments: PlanSegments,
  SkidDetectionStampedFloat: SkidDetectionStampedFloat,
  ExternalRobot: ExternalRobot,
  UserPrompt: UserPrompt,
  Events: Events,
  MissionCtrlCommand: MissionCtrlCommand,
  SkidDetectionDiff: SkidDetectionDiff,
  Event: Event,
  ResourcesState: ResourcesState,
  Twist2D: Twist2D,
  IOs: IOs,
  Pose2D: Pose2D,
  PlanSegment: PlanSegment,
  ResourceState: ResourceState,
  MissionCtrlState: MissionCtrlState,
  MovingState: MovingState,
  Proximity: Proximity,
  WorldModel: WorldModel,
  RobotMode: RobotMode,
  ChargingState: ChargingState,
  Trolley: Trolley,
  BatteryCurrents: BatteryCurrents,
};
