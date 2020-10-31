
(cl:in-package :asdf)

(defsystem "pamplemousse_sensors-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SpatialState" :depends-on ("_package_SpatialState"))
    (:file "_package_SpatialState" :depends-on ("_package"))
    (:file "filterStatus" :depends-on ("_package_filterStatus"))
    (:file "_package_filterStatus" :depends-on ("_package"))
    (:file "systemStatus" :depends-on ("_package_systemStatus"))
    (:file "_package_systemStatus" :depends-on ("_package"))
  ))