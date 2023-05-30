; Auto-generated. Do not edit!


(cl:in-package Policy-msg)


;//! \htmlinclude TagPoint.msg.html

(cl:defclass <TagPoint> (roslisp-msg-protocol:ros-message)
  ((StartPoint
    :reader StartPoint
    :initarg :StartPoint
    :type cl:integer
    :initform 0)
   (EndPoint
    :reader EndPoint
    :initarg :EndPoint
    :type cl:integer
    :initform 0))
)

(cl:defclass TagPoint (<TagPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Policy-msg:<TagPoint> is deprecated: use Policy-msg:TagPoint instead.")))

(cl:ensure-generic-function 'StartPoint-val :lambda-list '(m))
(cl:defmethod StartPoint-val ((m <TagPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Policy-msg:StartPoint-val is deprecated.  Use Policy-msg:StartPoint instead.")
  (StartPoint m))

(cl:ensure-generic-function 'EndPoint-val :lambda-list '(m))
(cl:defmethod EndPoint-val ((m <TagPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Policy-msg:EndPoint-val is deprecated.  Use Policy-msg:EndPoint instead.")
  (EndPoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagPoint>) ostream)
  "Serializes a message object of type '<TagPoint>"
  (cl:let* ((signed (cl:slot-value msg 'StartPoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'EndPoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagPoint>) istream)
  "Deserializes a message object of type '<TagPoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'StartPoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'EndPoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagPoint>)))
  "Returns string type for a message object of type '<TagPoint>"
  "Policy/TagPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagPoint)))
  "Returns string type for a message object of type 'TagPoint"
  "Policy/TagPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagPoint>)))
  "Returns md5sum for a message object of type '<TagPoint>"
  "3041787aa82eb0113d0b1c8705717568")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagPoint)))
  "Returns md5sum for a message object of type 'TagPoint"
  "3041787aa82eb0113d0b1c8705717568")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagPoint>)))
  "Returns full string definition for message of type '<TagPoint>"
  (cl:format cl:nil "int32 StartPoint~%int32 EndPoint~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagPoint)))
  "Returns full string definition for message of type 'TagPoint"
  (cl:format cl:nil "int32 StartPoint~%int32 EndPoint~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagPoint>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'TagPoint
    (cl:cons ':StartPoint (StartPoint msg))
    (cl:cons ':EndPoint (EndPoint msg))
))
