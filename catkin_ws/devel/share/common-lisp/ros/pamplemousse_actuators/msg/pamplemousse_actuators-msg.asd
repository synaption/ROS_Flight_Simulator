
(cl:in-package :asdf)

(defsystem "pamplemousse_actuators-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "wingActuatorCanFrame" :depends-on ("_package_wingActuatorCanFrame"))
    (:file "_package_wingActuatorCanFrame" :depends-on ("_package"))
    (:file "wingActuatorCommands" :depends-on ("_package_wingActuatorCommands"))
    (:file "_package_wingActuatorCommands" :depends-on ("_package"))
    (:file "wingActuatorStates" :depends-on ("_package_wingActuatorStates"))
    (:file "_package_wingActuatorStates" :depends-on ("_package"))
  ))