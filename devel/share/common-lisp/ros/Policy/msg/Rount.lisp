; Auto-generated. Do not edit!


(cl:in-package Policy-msg)


;//! \htmlinclude Rount.msg.html

(cl:defclass <Rount> (roslisp-msg-protocol:ros-message)
  ((road
    :reader road
    :initarg :road
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (roadNo
    :reader roadNo
    :initarg :roadNo
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (len1
    :reader len1
    :initarg :len1
    :type cl:integer
    :initform 0)
   (len2
    :reader len2
    :initarg :len2
    :type cl:integer
    :initform 0))
)

(cl:defclass Rount (<Rount>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rount>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rount)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Policy-msg:<Rount> is deprecated: use Policy-msg:Rount instead.")))

(cl:ensure-generic-function 'road-val :lambda-list '(m))
(cl:defmethod road-val ((m <Rount>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Policy-msg:road-val is deprecated.  Use Policy-msg:road instead.")
  (road m))

(cl:ensure-generic-function 'roadNo-val :lambda-list '(m))
(cl:defmethod roadNo-val ((m <Rount>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Policy-msg:roadNo-val is deprecated.  Use Policy-msg:roadNo instead.")
  (roadNo m))

(cl:ensure-generic-function 'len1-val :lambda-list '(m))
(cl:defmethod len1-val ((m <Rount>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Policy-msg:len1-val is deprecated.  Use Policy-msg:len1 instead.")
  (len1 m))

(cl:ensure-generic-function 'len2-val :lambda-list '(m))
(cl:defmethod len2-val ((m <Rount>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Policy-msg:len2-val is deprecated.  Use Policy-msg:len2 instead.")
  (len2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rount>) ostream)
  "Serializes a message object of type '<Rount>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'road))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roadNo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'roadNo))
  (cl:let* ((signed (cl:slot-value msg 'len1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'len2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rount>) istream)
  "Deserializes a message object of type '<Rount>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roadNo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roadNo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'len1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'len2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rount>)))
  "Returns string type for a message object of type '<Rount>"
  "Policy/Rount")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rount)))
  "Returns string type for a message object of type 'Rount"
  "Policy/Rount")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rount>)))
  "Returns md5sum for a message object of type '<Rount>"
  "f90ce80309ad83c278c5c01cd0830b90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rount)))
  "Returns md5sum for a message object of type 'Rount"
  "f90ce80309ad83c278c5c01cd0830b90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rount>)))
  "Returns full string definition for message of type '<Rount>"
  (cl:format cl:nil "int32[] road~%string[] roadNo~%int32 len1~%int32 len2~%# vector<int32> road~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rount)))
  "Returns full string definition for message of type 'Rount"
  (cl:format cl:nil "int32[] road~%string[] roadNo~%int32 len1~%int32 len2~%# vector<int32> road~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rount>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roadNo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rount>))
  "Converts a ROS message object to a list"
  (cl:list 'Rount
    (cl:cons ':road (road msg))
    (cl:cons ':roadNo (roadNo msg))
    (cl:cons ':len1 (len1 msg))
    (cl:cons ':len2 (len2 msg))
))
