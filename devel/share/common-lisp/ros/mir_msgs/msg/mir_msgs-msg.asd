
(cl:in-package :asdf)

(defsystem "mir_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AngleMeasurment" :depends-on ("_package_AngleMeasurment"))
    (:file "_package_AngleMeasurment" :depends-on ("_package"))
    (:file "BMSData" :depends-on ("_package_BMSData"))
    (:file "_package_BMSData" :depends-on ("_package"))
    (:file "BatteryCurrents" :depends-on ("_package_BatteryCurrents"))
    (:file "_package_BatteryCurrents" :depends-on ("_package"))
    (:file "BrakeState" :depends-on ("_package_BrakeState"))
    (:file "_package_BrakeState" :depends-on ("_package"))
    (:file "ChargingState" :depends-on ("_package_ChargingState"))
    (:file "_package_ChargingState" :depends-on ("_package"))
    (:file "Device" :depends-on ("_package_Device"))
    (:file "_package_Device" :depends-on ("_package"))
    (:file "Devices" :depends-on ("_package_Devices"))
    (:file "_package_Devices" :depends-on ("_package"))
    (:file "EncoderTestEntry" :depends-on ("_package_EncoderTestEntry"))
    (:file "_package_EncoderTestEntry" :depends-on ("_package"))
    (:file "Encoders" :depends-on ("_package_Encoders"))
    (:file "_package_Encoders" :depends-on ("_package"))
    (:file "Error" :depends-on ("_package_Error"))
    (:file "_package_Error" :depends-on ("_package"))
    (:file "Event" :depends-on ("_package_Event"))
    (:file "_package_Event" :depends-on ("_package"))
    (:file "Events" :depends-on ("_package_Events"))
    (:file "_package_Events" :depends-on ("_package"))
    (:file "ExternalRobot" :depends-on ("_package_ExternalRobot"))
    (:file "_package_ExternalRobot" :depends-on ("_package"))
    (:file "ExternalRobots" :depends-on ("_package_ExternalRobots"))
    (:file "_package_ExternalRobots" :depends-on ("_package"))
    (:file "Gpio" :depends-on ("_package_Gpio"))
    (:file "_package_Gpio" :depends-on ("_package"))
    (:file "GripperState" :depends-on ("_package_GripperState"))
    (:file "_package_GripperState" :depends-on ("_package"))
    (:file "HeightState" :depends-on ("_package_HeightState"))
    (:file "_package_HeightState" :depends-on ("_package"))
    (:file "HookData" :depends-on ("_package_HookData"))
    (:file "_package_HookData" :depends-on ("_package"))
    (:file "HookExtendedStatus" :depends-on ("_package_HookExtendedStatus"))
    (:file "_package_HookExtendedStatus" :depends-on ("_package"))
    (:file "HookStatus" :depends-on ("_package_HookStatus"))
    (:file "_package_HookStatus" :depends-on ("_package"))
    (:file "IOs" :depends-on ("_package_IOs"))
    (:file "_package_IOs" :depends-on ("_package"))
    (:file "JoystickVel" :depends-on ("_package_JoystickVel"))
    (:file "_package_JoystickVel" :depends-on ("_package"))
    (:file "LocalMapStat" :depends-on ("_package_LocalMapStat"))
    (:file "_package_LocalMapStat" :depends-on ("_package"))
    (:file "MirExtra" :depends-on ("_package_MirExtra"))
    (:file "_package_MirExtra" :depends-on ("_package"))
    (:file "MirLocalPlannerPathTypes" :depends-on ("_package_MirLocalPlannerPathTypes"))
    (:file "_package_MirLocalPlannerPathTypes" :depends-on ("_package"))
    (:file "MissionCtrlCommand" :depends-on ("_package_MissionCtrlCommand"))
    (:file "_package_MissionCtrlCommand" :depends-on ("_package"))
    (:file "MissionCtrlState" :depends-on ("_package_MissionCtrlState"))
    (:file "_package_MissionCtrlState" :depends-on ("_package"))
    (:file "MovingState" :depends-on ("_package_MovingState"))
    (:file "_package_MovingState" :depends-on ("_package"))
    (:file "PalletLifterStatus" :depends-on ("_package_PalletLifterStatus"))
    (:file "_package_PalletLifterStatus" :depends-on ("_package"))
    (:file "Path" :depends-on ("_package_Path"))
    (:file "_package_Path" :depends-on ("_package"))
    (:file "Pendant" :depends-on ("_package_Pendant"))
    (:file "_package_Pendant" :depends-on ("_package"))
    (:file "PlanSegment" :depends-on ("_package_PlanSegment"))
    (:file "_package_PlanSegment" :depends-on ("_package"))
    (:file "PlanSegments" :depends-on ("_package_PlanSegments"))
    (:file "_package_PlanSegments" :depends-on ("_package"))
    (:file "Pose2D" :depends-on ("_package_Pose2D"))
    (:file "_package_Pose2D" :depends-on ("_package"))
    (:file "PowerBoardMotorStatus" :depends-on ("_package_PowerBoardMotorStatus"))
    (:file "_package_PowerBoardMotorStatus" :depends-on ("_package"))
    (:file "PrecisionDockingStatus" :depends-on ("_package_PrecisionDockingStatus"))
    (:file "_package_PrecisionDockingStatus" :depends-on ("_package"))
    (:file "Proximity" :depends-on ("_package_Proximity"))
    (:file "_package_Proximity" :depends-on ("_package"))
    (:file "ResourceState" :depends-on ("_package_ResourceState"))
    (:file "_package_ResourceState" :depends-on ("_package"))
    (:file "ResourcesAcquisition" :depends-on ("_package_ResourcesAcquisition"))
    (:file "_package_ResourcesAcquisition" :depends-on ("_package"))
    (:file "ResourcesState" :depends-on ("_package_ResourcesState"))
    (:file "_package_ResourcesState" :depends-on ("_package"))
    (:file "RobotMode" :depends-on ("_package_RobotMode"))
    (:file "_package_RobotMode" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
    (:file "RobotStatus" :depends-on ("_package_RobotStatus"))
    (:file "_package_RobotStatus" :depends-on ("_package"))
    (:file "SafetyStatus" :depends-on ("_package_SafetyStatus"))
    (:file "_package_SafetyStatus" :depends-on ("_package"))
    (:file "Serial" :depends-on ("_package_Serial"))
    (:file "_package_Serial" :depends-on ("_package"))
    (:file "ServiceResponseHeader" :depends-on ("_package_ServiceResponseHeader"))
    (:file "_package_ServiceResponseHeader" :depends-on ("_package"))
    (:file "SkidDetectionDiff" :depends-on ("_package_SkidDetectionDiff"))
    (:file "_package_SkidDetectionDiff" :depends-on ("_package"))
    (:file "SkidDetectionStampedFloat" :depends-on ("_package_SkidDetectionStampedFloat"))
    (:file "_package_SkidDetectionStampedFloat" :depends-on ("_package"))
    (:file "SoundEvent" :depends-on ("_package_SoundEvent"))
    (:file "_package_SoundEvent" :depends-on ("_package"))
    (:file "StampedEncoders" :depends-on ("_package_StampedEncoders"))
    (:file "_package_StampedEncoders" :depends-on ("_package"))
    (:file "TimeDebug" :depends-on ("_package_TimeDebug"))
    (:file "_package_TimeDebug" :depends-on ("_package"))
    (:file "Trolley" :depends-on ("_package_Trolley"))
    (:file "_package_Trolley" :depends-on ("_package"))
    (:file "Twist2D" :depends-on ("_package_Twist2D"))
    (:file "_package_Twist2D" :depends-on ("_package"))
    (:file "UserPrompt" :depends-on ("_package_UserPrompt"))
    (:file "_package_UserPrompt" :depends-on ("_package"))
    (:file "WebPath" :depends-on ("_package_WebPath"))
    (:file "_package_WebPath" :depends-on ("_package"))
    (:file "WorldMap" :depends-on ("_package_WorldMap"))
    (:file "_package_WorldMap" :depends-on ("_package"))
    (:file "WorldModel" :depends-on ("_package_WorldModel"))
    (:file "_package_WorldModel" :depends-on ("_package"))
  ))