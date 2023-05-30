;; Auto-generated. Do not edit!


(when (boundp 'Policy::Rount)
  (if (not (find-package "POLICY"))
    (make-package "POLICY"))
  (shadow 'Rount (find-package "POLICY")))
(unless (find-package "POLICY::ROUNT")
  (make-package "POLICY::ROUNT"))

(in-package "ROS")
;;//! \htmlinclude Rount.msg.html


(defclass Policy::Rount
  :super ros::object
  :slots (_road _roadNo _len1 _len2 ))

(defmethod Policy::Rount
  (:init
   (&key
    ((:road __road) (make-array 0 :initial-element 0 :element-type :integer))
    ((:roadNo __roadNo) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:len1 __len1) 0)
    ((:len2 __len2) 0)
    )
   (send-super :init)
   (setq _road __road)
   (setq _roadNo __roadNo)
   (setq _len1 (round __len1))
   (setq _len2 (round __len2))
   self)
  (:road
   (&optional __road)
   (if __road (setq _road __road)) _road)
  (:roadNo
   (&optional __roadNo)
   (if __roadNo (setq _roadNo __roadNo)) _roadNo)
  (:len1
   (&optional __len1)
   (if __len1 (setq _len1 __len1)) _len1)
  (:len2
   (&optional __len2)
   (if __len2 (setq _len2 __len2)) _len2)
  (:serialization-length
   ()
   (+
    ;; int32[] _road
    (* 4    (length _road)) 4
    ;; string[] _roadNo
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _roadNo)) 4
    ;; int32 _len1
    4
    ;; int32 _len2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _road
     (write-long (length _road) s)
     (dotimes (i (length _road))
       (write-long (elt _road i) s)
       )
     ;; string[] _roadNo
     (write-long (length _roadNo) s)
     (dolist (elem _roadNo)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32 _len1
       (write-long _len1 s)
     ;; int32 _len2
       (write-long _len2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _road
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _road i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _roadNo
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roadNo (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _roadNo i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32 _len1
     (setq _len1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _len2
     (setq _len2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get Policy::Rount :md5sum-) "f90ce80309ad83c278c5c01cd0830b90")
(setf (get Policy::Rount :datatype-) "Policy/Rount")
(setf (get Policy::Rount :definition-)
      "int32[] road
string[] roadNo
int32 len1
int32 len2
# vector<int32> road
")



(provide :Policy/Rount "f90ce80309ad83c278c5c01cd0830b90")


