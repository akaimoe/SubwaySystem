;; Auto-generated. Do not edit!


(when (boundp 'Policy::TagPoint)
  (if (not (find-package "POLICY"))
    (make-package "POLICY"))
  (shadow 'TagPoint (find-package "POLICY")))
(unless (find-package "POLICY::TAGPOINT")
  (make-package "POLICY::TAGPOINT"))

(in-package "ROS")
;;//! \htmlinclude TagPoint.msg.html


(defclass Policy::TagPoint
  :super ros::object
  :slots (_StartPoint _EndPoint ))

(defmethod Policy::TagPoint
  (:init
   (&key
    ((:StartPoint __StartPoint) 0)
    ((:EndPoint __EndPoint) 0)
    )
   (send-super :init)
   (setq _StartPoint (round __StartPoint))
   (setq _EndPoint (round __EndPoint))
   self)
  (:StartPoint
   (&optional __StartPoint)
   (if __StartPoint (setq _StartPoint __StartPoint)) _StartPoint)
  (:EndPoint
   (&optional __EndPoint)
   (if __EndPoint (setq _EndPoint __EndPoint)) _EndPoint)
  (:serialization-length
   ()
   (+
    ;; int32 _StartPoint
    4
    ;; int32 _EndPoint
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _StartPoint
       (write-long _StartPoint s)
     ;; int32 _EndPoint
       (write-long _EndPoint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _StartPoint
     (setq _StartPoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _EndPoint
     (setq _EndPoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get Policy::TagPoint :md5sum-) "3041787aa82eb0113d0b1c8705717568")
(setf (get Policy::TagPoint :datatype-) "Policy/TagPoint")
(setf (get Policy::TagPoint :definition-)
      "int32 StartPoint
int32 EndPoint
")



(provide :Policy/TagPoint "3041787aa82eb0113d0b1c8705717568")


