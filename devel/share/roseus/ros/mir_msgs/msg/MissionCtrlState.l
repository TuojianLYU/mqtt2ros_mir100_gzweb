;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::MissionCtrlState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'MissionCtrlState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::MISSIONCTRLSTATE")
  (make-package "MIR_MSGS::MISSIONCTRLSTATE"))

(in-package "ROS")
;;//! \htmlinclude MissionCtrlState.msg.html


(intern "*STATE_IDLE*" (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(shadow '*STATE_IDLE* (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(defconstant mir_msgs::MissionCtrlState::*STATE_IDLE* 0)
(intern "*STATE_WAIT_POS_LOCK*" (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(shadow '*STATE_WAIT_POS_LOCK* (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(defconstant mir_msgs::MissionCtrlState::*STATE_WAIT_POS_LOCK* 1)
(intern "*STATE_WAIT_AREA_LOCK*" (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(shadow '*STATE_WAIT_AREA_LOCK* (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(defconstant mir_msgs::MissionCtrlState::*STATE_WAIT_AREA_LOCK* 2)
(intern "*STATE_WAIT_MAP_TRANSITION*" (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(shadow '*STATE_WAIT_MAP_TRANSITION* (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(defconstant mir_msgs::MissionCtrlState::*STATE_WAIT_MAP_TRANSITION* 10)
(intern "*STATE_WAIT_LIFT_START_FLOOR*" (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(shadow '*STATE_WAIT_LIFT_START_FLOOR* (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(defconstant mir_msgs::MissionCtrlState::*STATE_WAIT_LIFT_START_FLOOR* 11)
(intern "*STATE_WAIT_LIFT_END_FLOOR*" (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(shadow '*STATE_WAIT_LIFT_END_FLOOR* (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(defconstant mir_msgs::MissionCtrlState::*STATE_WAIT_LIFT_END_FLOOR* 12)
(intern "*STATE_WAIT_LIFT_END_FLOOR_CONTINUE*" (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(shadow '*STATE_WAIT_LIFT_END_FLOOR_CONTINUE* (find-package "MIR_MSGS::MISSIONCTRLSTATE"))
(defconstant mir_msgs::MissionCtrlState::*STATE_WAIT_LIFT_END_FLOOR_CONTINUE* 13)

(defun mir_msgs::MissionCtrlState-to-symbol (const)
  (cond
        ((= const 0) 'mir_msgs::MissionCtrlState::*STATE_IDLE*)
        ((= const 1) 'mir_msgs::MissionCtrlState::*STATE_WAIT_POS_LOCK*)
        ((= const 2) 'mir_msgs::MissionCtrlState::*STATE_WAIT_AREA_LOCK*)
        ((= const 10) 'mir_msgs::MissionCtrlState::*STATE_WAIT_MAP_TRANSITION*)
        ((= const 11) 'mir_msgs::MissionCtrlState::*STATE_WAIT_LIFT_START_FLOOR*)
        ((= const 12) 'mir_msgs::MissionCtrlState::*STATE_WAIT_LIFT_END_FLOOR*)
        ((= const 13) 'mir_msgs::MissionCtrlState::*STATE_WAIT_LIFT_END_FLOOR_CONTINUE*)
        (t nil)))

(defclass mir_msgs::MissionCtrlState
  :super ros::object
  :slots (_state _pos_id ))

(defmethod mir_msgs::MissionCtrlState
  (:init
   (&key
    ((:state __state) 0)
    ((:pos_id __pos_id) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _pos_id (round __pos_id))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:pos_id
   (&optional __pos_id)
   (if __pos_id (setq _pos_id __pos_id)) _pos_id)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; int32 _pos_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; int32 _pos_id
       (write-long _pos_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos_id
     (setq _pos_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::MissionCtrlState :md5sum-) "de5189be4482717ddcb7d18019a35f92")
(setf (get mir_msgs::MissionCtrlState :datatype-) "mir_msgs/MissionCtrlState")
(setf (get mir_msgs::MissionCtrlState :definition-)
      "uint8 STATE_IDLE = 0
uint8 STATE_WAIT_POS_LOCK = 1
uint8 STATE_WAIT_AREA_LOCK = 2
uint8 STATE_WAIT_MAP_TRANSITION = 10
uint8 STATE_WAIT_LIFT_START_FLOOR = 11
uint8 STATE_WAIT_LIFT_END_FLOOR = 12
uint8 STATE_WAIT_LIFT_END_FLOOR_CONTINUE = 13


int32 state
int32 pos_id

")



(provide :mir_msgs/MissionCtrlState "de5189be4482717ddcb7d18019a35f92")


