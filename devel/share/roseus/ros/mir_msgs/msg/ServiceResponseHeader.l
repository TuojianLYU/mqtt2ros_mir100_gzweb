;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::ServiceResponseHeader)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'ServiceResponseHeader (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::SERVICERESPONSEHEADER")
  (make-package "MIR_MSGS::SERVICERESPONSEHEADER"))

(in-package "ROS")
;;//! \htmlinclude ServiceResponseHeader.msg.html


(defclass mir_msgs::ServiceResponseHeader
  :super ros::object
  :slots (_success _error ))

(defmethod mir_msgs::ServiceResponseHeader
  (:init
   (&key
    ((:success __success) nil)
    ((:error __error) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error (string __error))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error
    4 (length _error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::ServiceResponseHeader :md5sum-) "45872d25d65c97743cc71afc6d4e884d")
(setf (get mir_msgs::ServiceResponseHeader :datatype-) "mir_msgs/ServiceResponseHeader")
(setf (get mir_msgs::ServiceResponseHeader :definition-)
      "bool success
string error

")



(provide :mir_msgs/ServiceResponseHeader "45872d25d65c97743cc71afc6d4e884d")


