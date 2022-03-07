
(cl:in-package :asdf)

(defsystem "morai_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :morai_msgs-msg
)
  :components ((:file "_package")
    (:file "MoraiEventCmdSrv" :depends-on ("_package_MoraiEventCmdSrv"))
    (:file "_package_MoraiEventCmdSrv" :depends-on ("_package"))
    (:file "MoraiScenarioLoadSrv" :depends-on ("_package_MoraiScenarioLoadSrv"))
    (:file "_package_MoraiScenarioLoadSrv" :depends-on ("_package"))
    (:file "MoraiSimProcSrv" :depends-on ("_package_MoraiSimProcSrv"))
    (:file "_package_MoraiSimProcSrv" :depends-on ("_package"))
    (:file "MoraiTLInfoSrv" :depends-on ("_package_MoraiTLInfoSrv"))
    (:file "_package_MoraiTLInfoSrv" :depends-on ("_package"))
    (:file "MoraiVehicleSpecSrv" :depends-on ("_package_MoraiVehicleSpecSrv"))
    (:file "_package_MoraiVehicleSpecSrv" :depends-on ("_package"))
  ))