
(cl:in-package :asdf)

(defsystem "Policy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Rount" :depends-on ("_package_Rount"))
    (:file "_package_Rount" :depends-on ("_package"))
    (:file "TagPoint" :depends-on ("_package_TagPoint"))
    (:file "_package_TagPoint" :depends-on ("_package"))
  ))